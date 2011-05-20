class Products::OthersController < ApplicationController
  
  def index
    @others = Flavor.find_all_by_product_id(Product.find_by_name('Other'), :order => 'name')
  end
end