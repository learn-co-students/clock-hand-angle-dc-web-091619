def clock_angle(time)
    times= time.split(':').map{|int| int.to_i}
  
    if times[0] != 12
      hour_angle = (times[0] * 30) + (times[1] * 0.5)
    else
      hour_angle = (times[1] * 0.5)
    end
  
    if times[1] != 0
      minute_angle = (times[1] * 6)
    else
      minute_angle = 0
    end
  
    if hour_angle > minute_angle
      total = hour_angle - minute_angle
    else
      total = minute_angle - hour_angle
    end
    total = 360 - total if total > 180
end