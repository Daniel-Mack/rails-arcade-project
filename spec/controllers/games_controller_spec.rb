require 'rails_helper'

RSpec.describe GamesController, type: :controller do

  describe "GET index" do

    before(:each) do
      player = FactoryBot.create(:player)
      current_player = player
      allow(controller).to(receive(:current_player).and_return(player))
    end

    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe "Games new", :type => :request do
    describe  do
      it "renders the games#new page" do
        get "/games/new"
        expect(response).to render_template(:new)
      end
    end
  end

  context 'POST #create' do
   let!(game = FactoryBot.create(:game) }

  it 'create a new game' do
    params = {
     name: 'An awesome game',
     difficulty_level: 'high',
     fun_rating: 'low'
    }
    expect { game(:create, params: { game: params }) }.to change(Game, :count).by(1)
   end
  end
end
