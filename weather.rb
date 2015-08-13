require 'yahoo_weatherman'

def get_location(location)
	client = Weatherman::Client.new
	weather = client.lookup_by_location(location)

	today = Time.now.strftime('%w').to_i

	weather.forecasts.each do |forecast|

	day = forecast['date']

	weekday = day.strftime('$w').to_i

	if weekday == today
		dayName = 'Today'
		elsif weekday == today + 1
			dayName = 'Tomorrow'
		else
			dayName = day.strftime('%A')
	end
			puts dayName + ' is going to be ' + forecast['text'].downcase + ' with a low of ' + forecast['low'].to_s + ' and a high of ' + forecast['high'].to_s
end

end
puts "To find out the weather in your area, enter your zip code (e.g. 90010)"
location = gets.chomp
youWeather = get_location(location)






=begin
#STEP 1
#user input, step1-4
puts "Enter Zip Code (e.g. 90001)"
zip = gets.chomp

def location(zip)

	#weather
	if sunny
		puts "It's Sunny!"
	end

	if cloudy
		puts "It's Crazy Cloudy!"
	end

	if rainy
		puts "It's Crazy Rainy!"
	end

	if snowy
		puts "It's Super Snowy!"
	end
end

=end
