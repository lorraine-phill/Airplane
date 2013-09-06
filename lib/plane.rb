class Plane

	def initialize weather = 'sunny'
		@weather = weather
	end

	def take_off_from(airport)
		airport.take_off
	end

	def has_weather?
		true
	end

	def lands_at(airport)
		airport.lands(:weather)
	end

end