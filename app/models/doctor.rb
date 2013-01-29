class Doctor < ActiveRecord::Base
  attr_accessible :clinic_id, :name
  belongs_to :clinic
  has_many :products
end
