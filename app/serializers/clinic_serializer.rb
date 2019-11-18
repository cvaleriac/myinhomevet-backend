class ClinicSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :services

  belongs_to :user

end
