require 'rails_helper'

RSpec.describe "Api::ConsoleController", type: :request do
  describe "GET /api/console" do
    it "works!" do
      get api_consoles_path
      expect(response).to have_http_status(200)
    end
  end
end
