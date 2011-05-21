class Admin::UserSessionsController < ApplicationController
  layout "admin"
  before_filter :require_user, :only => :destroy
  #before_filter :logged_in, :only => :new

  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])

    if @user_session.save
      flash[:success] = "You have successfully logged in"
      redirect_to admin_home_url
    else
      flash[:error] = "There was a problem logging in"
      render :action => "new"
    end
  end

  def destroy
    @user_session = UserSession.find(params[:id])
    if @user_session.destroy
      flash[:success] = "You have sucessfully logged out"
      redirect_to admin_root_url
    else
      flash[:error] = "There were problems that prevented you from logging out"
    end
  end
  
  def logged_in
    if current_user
      redirect_to admin_home_url
    end
  end
end
