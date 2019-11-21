class ClinicSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :services, :user_id

  belongs_to :user

end
