class Weather

	attr_accessor :weather

	def initialize weather=["sunny","stormy"]
		@weather = weather
	end

	def shuffle
		@weather.shuffle 
		@weather = @weather[1] 
	end

end