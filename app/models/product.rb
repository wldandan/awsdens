class Product < ActiveRecord::Base
  attr_accessible :clinic_id, :description, :doctor_id, :name, :responser

  belongs_to :clinic
  belongs_to :doctor
end
