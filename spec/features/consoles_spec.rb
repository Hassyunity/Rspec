require 'rails_helper'

RSpec.describe 'Consoles features' do 
    describe 'viewing the index' do 
        it 'list all of the consoles' do 
            Console.create!(name: 'Switch_node', manufacturer: 'Nintendo')
            Console.create!(name: 'Wii-2', manufacturer: 'Nintendo')

            visit('/')
            click_link('consoles')
            sleep 10

            expect(page).to have_content('Nintendo')
        end
    end 
    describe 'adding a new console' do 
        it 'adds the console to the list of consoles' do 
            visit ('/') 
            click_link('Consoles') 
            click_link('Add New Consoles') 

            fill_in('Name', with: 'Playstation vita')
            fill_in('Manufacturer', with: 'Sony')
            click_button('Create')

            expect(page).to have_content('Sony Playstation Vita')
            expect(current_path).to have_content('/conoles')
        end 
    end
end
