class User < ActiveRecord::Base
	attr_accessor :remember_token, :approval_token, :denial_token
	before_save :downcase_email
	before_create :create_approval_digest
	before_create :create_denial_digest
	validates :name, presence: true
	validates :email, presence: true
	validates :organization, presence: true
	validates :research_synopsis, presence: true
	acts_as_authentic do |c|
		c.crypto_provider = Authlogic::CryptoProviders::Sha512
	end

	def index
		@users = User.all
	end

	#Returns the hash digest of the given string.
	def User.digest(string)
		cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
		BCrypt::Password.create(string, cost: cost)
	end

	#Returns a new random token
	def User.new_token
		SecureRandom.urlsafe_base64
	end

	#Remembers a user in the database for use in persistent sessions.
	def remember
		self.remember_token = User.new_token
		update_attribute(:remember_digest, User.digest(remember_token))
	end	

	def deliver_password_reset_instructions!
		reset_perishable_token!
		PasswordResetMailer.reset_email(self).deliver_now
	end

	def deliver_access_request!
		reset_perishable_token!
		RequestAccessMailer.request_access_email(self).deliver_now
	end

	def authenticated?(attribute, token)
		digest = send("#{attribute}_digest")
		return false if digest.nil?
		BCyrpt::Password.new(digest).is_password?(token)
	end

	private

	#Converts email to all lower-case.
	def downcase_email
		self.email = email.downcase
	end

	def create_approval_digest
		self.approval_token = User.new_token
		self.approval_digest = User.digest(approval_token)
	end

	def create_denial_digest
		self.denial_token = User.new_token
		self.denial_digest = User.digest(denial_token)
	end
end
