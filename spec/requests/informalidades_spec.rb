require 'rails_helper'

RSpec.describe "Informalidades", type: :request do
  describe "GET /informalidades" do
    it "works! (now write some real specs)" do
      get informalidades_path
      expect(response).to have_http_status(200)
    end
  end
end
