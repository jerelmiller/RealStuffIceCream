class EventsController < ApplicationController
  
  EVENTS_PER_PAGE = 3
  
  def index
    @events = Event.paginate(:page => params[:page], :per_page => EVENTS_PER_PAGE, :order => 'start_time ASC')
  end

end
