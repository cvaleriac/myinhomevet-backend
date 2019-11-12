class UserSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :clinics
  has_many :pets
  
end
