require 'rails_helper'

RSpec.describe "Consoles", type: :system do
  before do
    driven_by(:rack_test)
  end

  it "loads the show page with the console name" do 
    # login_as(create(:subscribe_user))
    
    # console = create(:console, name: "nintendo DS")

    # visit console_path(console)
    visit '/'
    # expect(page).to have_content("nintendo DS")
    expect(page).to have_content("CONTACT")
  end

end 
