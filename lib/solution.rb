require 'pry'

def clock_angle(time)
    time_now = time.split(":")
    hour = time_now[0].to_i
    minute = time_now[1].to_i

    mh = minute * 6
    hh = (hour * 30) + (minute * 0.5)
    angle = (mh - hh).abs
    
    if angle > 180
        angle = 360 - angle
    else angle
    end
end

# clock_angle("12:25")
# clock_angle("7:27")
# clock_angle("12:27")

