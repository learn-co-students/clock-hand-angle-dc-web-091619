def clock_angle(time)
  
  hour = time.split(":")[0].to_i
  minute = time.split(":")[1].to_i
  
  if hour != 12
    hour_angle = (hour * 30) + (0.5 * minute)
  else
    hour_angle = 0.5 * minute
  end

  minute_angle = (360 * minute) / 60
  
  
  angle_between = (hour_angle - minute_angle).abs

  if angle_between > 180
    angle_between = 360-angle_between
  end
  
  return angle_between
end