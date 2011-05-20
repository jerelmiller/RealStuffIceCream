class Admin::EventsController < Admin::AdminController

  def index
    @events = Event.find(:all, :order => 'start_time ASC')
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(params[:event])
    
    if @event.save
        redirect_to admin_events_path
    else
      render :action => "new"
    end
  end

  def update
    @event = Event.find(params[:id])

    if @event.update_attributes(params[:event])
      redirect_to admin_events_path
    else
      render :action => "edit"
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    
    redirect_to admin_events_path
  end
end
