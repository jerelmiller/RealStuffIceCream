class Admin::FlavorsController < Admin::AdminController
  
  before_filter :load_products, :only => [:edit, :update, :new, :create]
  
  def index
    @flavors = Flavor.all(:order => 'name')
#    @flavors.each do |flavor|
#      first_letter = flavor.name.slice!(0..1).capitalize
#      flavor.name = first_letter + flavor.name
#    end
  end
  
  def new
    @flavor = Flavor.new
  end
  
  def create
    @flavor = Flavor.new(params[:flavor])
    if @flavor.save
      flash[:success] = "You have successfully created #{@flavor.name}"
      redirect_to admin_flavors_path
    else
      flash[:error] = "There was a problem creating the flavor"
      render :action => "new"
    end
  end

  def edit
    @flavor = Flavor.find(params[:id])
  end
  
  def update
    @flavor = Flavor.find(params[:id])

    if @flavor.update_attributes(params[:flavor])
      flash[:success] = "You have successfully updated #{@flavor.name}"
      redirect_to admin_flavors_path
    else
      flash[:error] = "There was a problem updating the flavor"
      render :action => "edit"
    end
  end
  
  def show
    @flavor = Flavor.find(params[:id])
  end
  
  def destroy
    @flavor = Flavor.find(params[:id])
    if @flavor.destroy
      flash[:success] = "You have successfully deleted #{@flavor.name}"
      redirect_to admin_flavors_path
    else
      flash[:error] = "There was a problem deleting #{@flavor.name}"
    end
  end
  
  private
    def load_products
      @products = Product.all
    end
  
end