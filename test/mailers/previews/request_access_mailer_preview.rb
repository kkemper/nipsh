class RequestAccessMailerPreview < ActionMailer::Preview
  def request_access
    user = User.first
    user.activation_token = User.new_token
    request_access(user)
  end
end