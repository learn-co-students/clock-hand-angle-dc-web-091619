def clock_angle(time)
    # code your solution here
  array = time.split(":")
  h = array[0].to_i
  m = array[1].to_i

  angle = (((h * 30) + (m * 0.5)) - (m * 6)).abs

  return_array = [360-angle, angle]
  return_array.select.min  
end
