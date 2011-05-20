class Products::RealStuffcakesController < ApplicationController
  def index
    @real_stuffcakes = Flavor.find_all_by_product_id(Product.find_by_name('Real Stuffcakes').id, :order => 'name')
  end
end