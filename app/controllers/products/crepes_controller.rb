class Products::CrepesController < ApplicationController
  def index
    @crepes = Flavor.find_all_by_product_id(Product.find_by_name('Crepes').id, :order => 'name')
  end
end