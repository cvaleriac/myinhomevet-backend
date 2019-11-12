class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :user_id, :species

  belongs_to :user

end
