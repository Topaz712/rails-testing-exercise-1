require 'rails_helper'

RSpec.describe "Articles", type: :request do
  describe "GET /articles" do

    let(:article) {create(:article)}

    before do 
      get '/articles'
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it 'returns a list of articles' do
      expect(response.body).to eq(Article.all.to_json)
    end
  end
end