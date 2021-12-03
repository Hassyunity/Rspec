require 'rails_helper'

RSpec.describe 'Console requests' do 
    # let(:json)  { JSON.parse(response.body) }

    describe 'GET /api/consoles' do 
        it 'returns an array of some consoles' do 
            get('/api/consoles')
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
        it 'suports specifying consoles for a specifique manufacturer' do 
            get('/api/consoles', params: { manufacturer: 'Nintendo' })
            json = JSON.parse(response.body)
            expect(json['consoles']).to contain_exactly(
                'NES',
                'SNES',
                'Wii',
                'Switch'
            )
            get('/api/consoles', params: { manufacturer: 'Sony' })
            json = JSON.parse(response.body)
            expect(json['consoles']).to contain_exactly(
                'PS1',
                'PS5'
            )
            get('/api/consoles', params: { manufacturer: 'Sega' })
            json = JSON.parse(response.body)
            expect(json['consoles']).to contain_exactly(
                'Genesis'
            )
        end
    end
end
