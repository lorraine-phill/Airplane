require 'airport'

describe Airport do

	# it 'has weather object tied to it' do
	# 	airport.weather_tie
	# end

	it 'has no planes' do
		airport = Airport.new
		expect(airport).not_to have_planes
	end

	it 'has planes' do
		airport = Airport.new [:plane]
		expect(airport).to have_planes
	end

	it 'can take off from airport' do
		airport = Airport.new [:planes]
		expect(airport.take_off).to eq :planes
	end

 	it 'has no planes left after all taking off' do 
		airport = Airport.new [:planes]
	    airport.take_off
	    expect(airport).not_to have_planes
  	end

  	it 'does not take off from airport if no planes' do 
		airport = Airport.new
	    expect{airport.take_off}.to raise_error 'No more planes at this airport'
  	end

  	it 'does not take off or land if bomb scare' do 
		airport = Airport.new
	    expect{airport.bomb_scare}.to raise_error 'Bomb scare - No planes can take off or land at this time'
  	end

  	 it 'returns to normal after bomb scare' do 
		airport = Airport.new
	    expect{airport.bomb_off}.to raise_error 'Bomb scare has been called off - flights have been resumed as normal'
  	end

  # 	 it 'does not take off from airport if no planes' do 
		# airport = Airport.new
	 #    expect{airport.take_off}.to raise_error 'No more planes at this airport'
  # 	end

  	#  	it 'can land at airport' do
	# 	airport = Airport.new [:planes]
	# 	expect(airport.lands_at).to eq :planes
	# end
	
end