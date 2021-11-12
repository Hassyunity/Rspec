require 'rails_helper'

RSpec.describe "widgets/index", type: :view do
  before(:each) do
    assign(:widgets, [
      Widget.create!(
        name: "fitness"
      ),
      Widget.create!(
        name: "fitness"
      ),
      Widget.create!(
        name: "clock"
      )
    ])
  end

  it "renders a list of widgets" do
    render :template => "widgets/index.html.erb"
    assert_select "div>tr>td", text: "fitness".to_s, count: 2
    assert_select "tr>td", text: "clock".to_s, count: 1
  end
end
