require 'rails_helper'

RSpec.describe Api::V1::MoviesController, type: :controller do

  describe "GET #index" do

    context "There are movies" do
      before { 4.times { create(:movie) } }

      it "returns http success" do
        get :index
        expect(response).to have_http_status(:success)
      end

      it "Returns a list of movies" do
        get :index
        expect(JSON.parse(response.body).count).to eql(4)
      end
    end

    context "There are movies" do
      
      it "Retorna uma lista de filmes vazios" do
        get :index
        expect(JSON.parse(response.body).count).to eql(0)
      end
    end
  end
end
