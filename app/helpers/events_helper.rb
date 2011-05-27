module EventsHelper
  
  def same_date(start, finish)
    if start.year == finish.year && start.day == finish.day && start.month == finish.month
      return true
    else
      return false
    end
  end
  
  def valid_date(start, finish)
    if start.nil? || finish.nil?
      return false
    else
      return true
    end
  end
end
