class Products::IceCreamController < ApplicationController

  
  def index
    @ice_cream = Flavor.find_all_by_product_id(Product.find_by_name('Ice Cream').id, :order => 'name')
  end

end