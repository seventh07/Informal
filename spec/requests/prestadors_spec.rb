require 'rails_helper'

RSpec.describe "Prestadors", type: :request do
  describe "GET /prestadors" do
    it "works! (now write some real specs)" do
      get prestadors_path
      expect(response).to have_http_status(200)
    end
  end
end
