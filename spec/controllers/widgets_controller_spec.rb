require "rails_helper"

RSpec.describe WidgetsController, type: :controller do
  describe "GET index" do
    it "it" do 
      get :show
      expect(response).to have_http_status(:ok)
    end
  end
end