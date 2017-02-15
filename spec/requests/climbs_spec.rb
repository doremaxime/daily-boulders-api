require 'rails_helper'

RSpec.describe "Climbs", type: :request do
  describe "GET /climbs" do
    it "works! (now write some real specs)" do
      get climbs_path
      expect(response).to have_http_status(200)
    end
  end
end
