class Admin::UserSessionsController < ApplicationController
  layout "admin"
  before_filter :require_user, :only => :destroy
  before_filter :logged_in, :only => :new

  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])

    respond_to do |format|
      if @user_session.save
        format.html { redirect_to admin_home_root_url }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user_session.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @user_session = UserSession.find(params[:id])
    @user_session.destroy

    respond_to do |format|
      format.html { redirect_to(admin_root_url) }
      format.xml  { head :ok }
    end
  end
  
  def logged_in
    if current_user
      redirect_to admin_home_root_url
    end
  end
end
