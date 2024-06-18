require "rails_helper"

RSpec.describe ArticlesController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_successful
    end

    it "contains a greeting" do
      get :index
      expect(response).to include "Hello, Rails!"
    end
  end
end
