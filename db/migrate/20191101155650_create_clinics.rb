class CreateClinics < ActiveRecord::Migration[5.2]
  def change
    create_table :clinics do |t|
      t.integer :clinic_id
      t.string :name
      t.string :address
      t.string :services

      t.timestamps
    end
  end
end
