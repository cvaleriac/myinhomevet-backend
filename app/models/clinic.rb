class Clinic < ApplicationRecord
    belongs_to :user

  validates :name, presence: true
  validates :address, presence: true
  validates :name, :uniqueness => { case_sensitive: false }
  validates :address, uniqueness: true
end
