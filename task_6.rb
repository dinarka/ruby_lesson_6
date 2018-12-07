
def ask (request)
    time = Time.new
    if request.is_a? String
      info = case request
        when 'time'
          "It's #{time.strftime("%H:%M")} now."
        when 'date'
          "Today is #{time.strftime("%d %B, %Y")}"
        when 'day'
          "Today is #{time.strftime("%A")}"
        when 'remaining days'
          "It's #{365 - time.yday} days until the end of 2018"
        when 'remaining weeks'
          "It's #{52 - time.strftime("%W").to_i} weeks until the end of 2018"
        else
          "Error: wrong request. Try again"
        end
      puts info
    end
end

puts "Enter your request (time, date, day, remaining days or weeks):"
input = gets.chomp

ask (input)
