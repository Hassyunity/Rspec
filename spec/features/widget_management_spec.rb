require "rails_helper"

RSpec.feature "Widget management", :type => :feature do
  scenario "User creates a new widget" do
    visit "/widgets/new"

    fill_in "Name", :with => "Widget"
    click_button "Create Widget"

    expect(page).to have_text("Widget bien creer.")
  end
end