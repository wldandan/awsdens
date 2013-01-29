class Clinic < ActiveRecord::Base
  attr_accessible :address, :description, :full_name, :name, :phone
  has_many :doctors, :dependent => :destroy
  has_many :artifact_types, :dependent => :destroy
  has_many :products
end
