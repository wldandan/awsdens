class Clinic < ActiveRecord::Base
  attr_accessible :address, :description, :full_name, :name, :phone
  has_many :doctors, :dependent => :destroy
end
