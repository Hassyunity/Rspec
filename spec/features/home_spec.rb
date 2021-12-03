require 'rails_helper'

RSpec.describe 'Home features' do 
    it 'displays the name of use app' do
        visit ('/') 
        sleep 3
        expect(page).to have_content('Home page') 
        click_link('Widgets')
        expect(current_path).to eql('/widgets')
        expect(page).to have_content('Widgets index test for chrome control')
    end
end
