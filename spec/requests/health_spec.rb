require 'rails_helper'

RSpec.describe "Healths", type: :request do
  describe "GET /health" do
    it 'should return 200' do
      get("/health")
      expect(response.status).to eq 200
      expect(JSON.parse(response.body)["ok"].to_s).to eq "true"
    end
  end
end