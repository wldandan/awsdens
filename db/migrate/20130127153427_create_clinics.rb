class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :full_name
      t.string :address
      t.string :phone
      t.text :description

      t.timestamps
    end
  end
end
