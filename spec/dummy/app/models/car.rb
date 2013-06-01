class Car < ActiveRecord::Base
  attr_accessible :brand, :engine_type, :last_service, :name, :year
  validates_presence_of :name, :engine_type
end
