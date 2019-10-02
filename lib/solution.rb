def clock_angle(time)
    split_time = time.split(":").map {|unit| unit.to_i}
    
    mins_location = split_time[1] * 6
    hour_location = split_time[0] * 30 + (0.5 * split_time[1])
    angle = (hour_location - mins_location).abs
    if angle > 180
        angel = 360 - angle
    else
        angle
    end
    
end
