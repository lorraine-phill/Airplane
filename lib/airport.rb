class Airport

	def initialize planes=[]
		@planes = planes
	end

	# def weather_tie
	# 	Airport < Weather
	# end

	def has_planes?		
		!@planes.empty?
	end

	def take_off
		raise 'No more planes at this airport' if !has_planes?
  		@planes.pop
	end

	def lands_at
  			@planes.push
	end

	def bomb_scare
		raise 'Bomb scare - No planes can take off or land at this time'
	end

	def bomb_off
		raise 'Bomb scare has been called off - flights have been resumed as normal'
	end

end