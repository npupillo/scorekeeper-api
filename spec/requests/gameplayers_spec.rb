require 'rails_helper'

RSpec.describe "Gameplayers", :type => :request do
  describe "GET /gameplayers" do
    it "works! (now write some real specs)" do
      get gameplayers_path
      expect(response).to have_http_status(200)
    end
  end
end
