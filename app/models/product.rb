class Product < ActiveRecord::Base
  has_many :flavors
end
