class Admin::EventsController < Admin::AdminController

  EVENTS_PER_PAGE = 3
  def index
    @events = Event.find(:all, :order => 'start_time ASC')
    @events_count = Event.count
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
      flash[:success] = "You have successfully created #{@event.title}"
      redirect_to events_path
    else
      flash[:error] = "There was a problem creating the event"
      render :action => "new"
    end
  end

  def update
    @event = Event.find(params[:id])

    if @event.update_attributes(params[:event])
      flash[:success] = "You have successfully updated #{@event.title}"
      redirect_to events_path
    else
      flash[:error] = "There was a problem updating the flavor"
      render :action => "edit"
    end
  end

  def destroy
    @event = Event.find(params[:id])
    if @event.destroy
      flash[:success] = "You have sucessfully deleted #{@event.title}"
      redirect_to events_path
    else
      flash[:error] = "There was a problem deleting #{@event.title}"
    end
  end
end
