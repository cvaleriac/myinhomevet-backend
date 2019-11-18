class Clinic < ApplicationRecord
    belongs_to :user

  validates :name, presence: true
  validates :address, presence: true
  validates :address, uniqueness: true
  validates :services, presence: true
end
