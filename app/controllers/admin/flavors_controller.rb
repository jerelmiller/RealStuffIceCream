class Admin::FlavorsController < Admin::AdminController
  
  before_filter :load_products, :only => [:edit, :update, :new, :create]
  
  def index
    @flavors = Flavor.find(:all, :order => 'name')
  end
  
  def new
    @flavor = Flavor.new
  end
  
  def create
    @flavor = Flavor.new(params[:flavor])
    if @flavor.save
      redirect_to admin_flavors_path
    else
      render :action => "new"
    end
  end

  def edit
    @flavor = Flavor.find(params[:id])
  end
  
  def update
    @flavor = Flavor.find(params[:id])

    if @flavor.update_attributes(params[:flavor])
      redirect_to admin_flavors_path
    else
      render :action => "edit"
    end
  end
  
  def show
    @flavor = Flavor.find(params[:id])
  end
  
  def destroy
    @flavor = Flavor.find(params[:id])
    @flavor.destroy
  
    redirect_to admin_flavors_path
  end
  
  private
    def load_products
      @products = Product.all
    end
  
end