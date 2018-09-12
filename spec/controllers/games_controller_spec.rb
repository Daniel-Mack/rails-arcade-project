# frozen_string_literal: true

require 'rails_helper'

RSpec.describe GamesController, type: :controller do
  context 'GET #index' do
    before(:each) do
      player = FactoryBot.create(:player)
      game = FactoryBot.create(:game)
      current_player = player
      allow(controller).to(receive(:current_player).and_return(player))
    end

    it 'has a 200 status code' do
      get :index
      expect(response.status).to eq(200)
    end

    it 'should success and render to index page' do
      get :index
      expect(response).to have_http_status(200)
      expect(response).to render_template :index
    end
  end

  describe 'Games #new', type: :request do
    it 'renders the games#new page' do
      get '/games/new'
      expect(response).to render_template(:new)
    end
  end

  context 'POST #create' do
    it 'creates a new game' do
      params = {
        name: 'An awesome game',
        difficulty_level: 'Hard',
        fun_rating: 'High'
      }
      expect { post(:create, params: { game: params }) }.to change(Game, :count).by(1)
    end
  end

  context 'PUT #update' do
    let!(:game) { FactoryBot.create(:game) }
    it 'should update game info' do
      params = {
        name: 'Awesome product',
        difficulty_level: 'Hard',
        fun_rating: 'High'
      }
      put :update, params: { id: game.id, game: params }
      game.reload
      params.keys.each do |key|
        expect(game.attributes[key.to_s]).to eq params[key]
      end
    end

    context 'GET #show' do
      it 'renders the games#show page' do
        get :show, params: { id: game.id }
        expect(response).to have_http_status(200)
        expect(response).to render_template :show
      end
    end
  end
end
