class ArtifactType < ActiveRecord::Base
  attr_accessible :clinic_id, :description, :name, :price

  belongs_to :clinic
end
