class Products::FlavorsController < ApplicationController
    # GET /products
    # GET /products.xml
    def index
      @flavors = Flavor.all

      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @products }
      end
    end
  
end
