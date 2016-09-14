class User < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true
	validates :organization, presence: true
	validates :research_synopsis, presence: true
	acts_as_authentic do |c|
		c.crypto_provider = Authlogic::CryptoProviders::Sha512
	end

	def deliver_password_reset_instructions!
		reset_perishable_token!
		PasswordResetMailer.reset_email(self).deliver_now
	end

	def deliver_access_request!
		reset_perishable_token!
		RequestAccessMailer.request_access_email(self).deliver_now
	end
end
