class User < ApplicationRecord
    has_many :clinics
    has_many :pets

  validates :name, presence: true
  validates :name, :uniqueness => { case_sensitive: false }
  
end
