class User < ApplicationRecord
   has_many :clinics
   has_secure_password

  validates :username, presence: true
  validates :username, uniqueness: true
  validates :username, :uniqueness => { case_sensitive: false }
  
end
