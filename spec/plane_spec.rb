require 'plane'

describe Plane do

	let(:plane){Plane.new}	

	it 'can take off from airport' do 
		airport = double :airport
		expect(airport).to receive :take_off
		plane.take_off_from(airport)
	end

	it 'takes off from airport' do 
		airport = double :airport, take_off: :weather
		plane.take_off_from(airport)
		expect(plane).to have_weather
	end

	it 'lands at airport' do 
		plane = Plane.new :weather
		airport = double :airport
		expect(airport).to receive(:lands).with(:weather)
		plane.lands_at(airport)
	end

	it 'contained within airport' do 
	 	airport = double :airport, lands: :weather
		plane.lands_at(airport)
		expect(plane).not_to have_weather
	end


end