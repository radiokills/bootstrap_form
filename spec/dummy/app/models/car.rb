class Car < ActiveRecord::Base
  belongs_to :engine_type
  attr_accessible :brand, :description, :is_working, :kilometers, :last_registration, :name, :engine_type_id
  validates_presence_of :brand, :description, :is_working, :kilometers, :last_registration, :name, :engine_type_id
end
