class Event < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :start_time

end
