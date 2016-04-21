require "spec_helper"
describe PruebasController, :type => :controller do
  describe "GET #index" do
    it "responds Prueba successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end
end