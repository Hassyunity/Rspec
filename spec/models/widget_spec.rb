require 'rails_helper'

RSpec.describe Widget, type: :model do
  subject { Widget.new(name: "test") }

  before { subject.save }
   # let(:name) { build(:widget) }                                                      
  it 'name should be present' do 
    subject.name = nil 
    widget = Widget.new
    widget.valid?
    expect(subject).to_not be_valid
    expect(widget.errors[:name]).to include('is too short (minimum is 4 characters)')
    
  end

   it 'create simple widget and random widget' do 
    widget =create(:widget)
    random_widget = create(:widget_random)
    random_widget = create(:widget_random)
    random_widget = create(:widget_random)
    random_widget = create(:widget_random)
   end 

    #  it "has one after adding one" do
    #   instance_double("Widget", :name => "test")
    # end
  
end