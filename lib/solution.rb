def clock_angle(time)
  time_array = time.split(":")
  hour = time_array[0].to_i
  min = time_array[1].to_i

  hour_angle = (30 * hour) + (min/60 * 30)
  minute_angle = 6 * min

  answer = (hour_angle - minute_angle).abs
  answer > 180 ? 360 - answer : answer
end
