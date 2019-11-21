class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :species, :age, :user_id

  belongs_to :user

end
