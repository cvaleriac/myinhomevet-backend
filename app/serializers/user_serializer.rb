class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :pet

  has_many :clinics
  has_many :pets
end
