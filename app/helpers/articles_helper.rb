module ArticlesHelper
  def time_distance(time)
    day_difference = Time.now.day - time.day
    if day_difference > 3
      return true
    else
      return false
    end
  end
end
