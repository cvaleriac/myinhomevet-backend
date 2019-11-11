class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :age
      t.string :integer

      t.timestamps
    end
  end
end
