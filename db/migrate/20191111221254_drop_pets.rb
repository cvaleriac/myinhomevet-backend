class DropPets < ActiveRecord::Migration[5.2]
  def change
    drop_table :pets
  end
end
