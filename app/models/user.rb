class User < ActiveRecord::Base
  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  has_secure_password
  # validates :password, length: { minimum: 6 ,message: "Password Should be of 6 characters"}
end
