require 'rails_helper'

RSpec.describe "Widgets", type: :request do
  describe "GET /index" do

    it "assign widget" do 
      widget = Widget.create 
      get :index 
      expect(assigns(:widgets)).to eq([widget])
    end
    it "renders the index template" do 
      get :index 
      expect(response).to render-template("index")
    end
    # pending "add some examples (or delete) #{__FILE__}"
  end
end
