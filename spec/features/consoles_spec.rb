require 'rails_helper'

RSpec.describe 'Consoles features' do 
    describe 'viewing the index' do 
        it 'list all of the consoles' do 
            # Console.create!(name: 'Switch', manufacturer: 'Nintendo')
            # Console.create!(name: 'Wii', manufacturer: 'Nintendo')

            visit('/')
            click_link('console')
            sleep 10

            expect(page).to have_content('Nintendo')
        end
    end
end
