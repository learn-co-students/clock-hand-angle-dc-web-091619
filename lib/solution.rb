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

    total = (hour_angle - minute_angle).abs
    return (360 - total) if total > 180
    total
end