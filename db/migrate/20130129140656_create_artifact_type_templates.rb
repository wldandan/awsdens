class CreateArtifactTypeTemplates < ActiveRecord::Migration
  def change
    create_table :artifact_type_templates do |t|
      t.string :name
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
