class Product < ActiveRecord::Base
  has_many :flavors
  
  validates_uniqueness_of :name
end
