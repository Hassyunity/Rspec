require 'rails_helper'

RSpec.describe 'Console requests' do 
    describe 'GET /consoles' do 
        it 'returns an array of some consoles' do 
            get('/consoles')
            json = JSON.parse(response.body)
            expect(json['consoles']).to contain_exactly(
            # expect(json['consoles']).to include(
                'NES', 
                'SNES',
                'Wii',
                'Genesis',
                'Switch',
                'PS1',
                'PS5'
            )
        end
    end
end
