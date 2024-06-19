require "rails_helper"

RSpec.describe ArticlesController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new
      expect(response).to be_successful
    end
  end

  let(:valid_attributes) {
    { title: "Sample Article", body: "This is a sample article." }
  }

  describe "GET #show" do
    let!(:article) { Article.create! valid_attributes }

    it "returns a success response" do
      get :show, params: { id: article.to_param }
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Article" do
        expect {
          post :create, params: { article: valid_attributes }
        }.to change(Article, :count).by(1)
      end

      it "redirects to the created article" do
        post :create, params: { article: valid_attributes }
        expect(response).to redirect_to(Article.last)
      end
    end
  end
end
