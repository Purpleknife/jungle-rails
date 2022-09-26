class User < ApplicationRecord
  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, 
    presence: true,
    confirmation: { case_sensitive: false },
    uniqueness: true
  validates :password,
    presence: true,
    confirmation: true,
    length: { minimum: 8 }
  validates :password_confirmation, presence: true

  def self.authenticate_with_credentials(email, password)
    email = email.strip.downcase #no white spaces, convert it to lowercase.
    user = User.find_by_email(email)
    user_password = user.authenticate(password)

    user && user_password ? user : nil
  end

end
