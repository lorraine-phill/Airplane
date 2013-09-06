require 'weather'

describe Weather do

	it 'should be sunny or stormy' do
		weather = Weather.new
		weather.shuffle
		expect(weather)
	end


end