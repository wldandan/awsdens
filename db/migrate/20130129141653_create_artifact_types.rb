class CreateArtifactTypes < ActiveRecord::Migration
  def change
    create_table :artifact_types do |t|
      t.integer :clinic_id
      t.string :name
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
