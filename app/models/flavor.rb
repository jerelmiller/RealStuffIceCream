class Flavor < ActiveRecord::Base
  belongs_to :product
  
  validates_presence_of :name
end
