module FlavorsHelper
  def time_distance(time)
    day_difference = Time.now.day - time.day
    if day_difference > 14
      return true
    else
      return false
    end
  end
end
