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

end
