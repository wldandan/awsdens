class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :clinic_id
      t.string :doctor_id
      t.string :responser
      t.text :description

      t.timestamps
    end
  end
end
