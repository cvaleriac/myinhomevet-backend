class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :species, :age

   belongs_to :user
end
