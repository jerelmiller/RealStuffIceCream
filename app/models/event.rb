class Event < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :location
  validates_presence_of :start_date
  validates_presence_of :start_time
  
  protected
  
    def validate          
      if !self.end_date.nil? && !self.end_date.nil?
        if self.start_date == self.end_date
          errors.add_to_base "End time must be after start time" if self.start_time >= self.end_time
        elsif self.start_date > self.end_date
          errors.add_to_base "End date must be after start date"
        end
      end
    end
end
