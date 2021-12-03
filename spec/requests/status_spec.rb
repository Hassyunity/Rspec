require 'rails_helper'

RSpec.describe 'Status requests' do
  describe "GET /api/status" do
    it "returns a status mesage" do
      get "/api/status"
      json = JSON.parse(response.body)
      expect(response_json['status']).to eql('ok ok')
      expect(response.status).to eql(200)
    end
  end

end
