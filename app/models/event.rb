class Event < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :start_time
  validates_presence_of :location
end
