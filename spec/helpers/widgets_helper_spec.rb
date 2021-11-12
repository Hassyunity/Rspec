require 'rails_helper'
require 'capybara/rails'

# Specs in this file have access to a helper object that includes
# the WidgetsHelper. For example:
#
# describe WidgetsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe WidgetsHelper, type: :helper do
describe "#widget_title" do 
it "includes the app name" do 
  assign(:title, "Title Widget")
  expect(helper.Widget_title).to eq("The App: Title Widget")
end
end 
describe "link_to_widget" do 
  it "links to a widget using its name" do 
    widget = Widget.create!(:name => "This Widget")
    expect(helper.link_to_widget(widget)).to include("This Widget")
    expect(helper.link_to_widget(widget)).to include(widget_path(widget))
  end
end

  # pending "add some examples to (or delete) #{__FILE__}"
end
