class Admin::UsersController < Admin::AdminController

  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      flash[:success] = "#{@user.first_name} was successfully updated"
      redirect_to home_url
    else
      flash[:error] = "There was a problem updating the user"
      render :action => "edit" 
    end
  end

end
