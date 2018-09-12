# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Game, type: :model do
  it 'is valid with a name' do
    expect(Game.new(name: 'Game')).to be_valid
  end

  it 'is valid with a difficulty level' do
    expect(Game.new(name: 'Game', difficulty_level: 'low'))
  end

  it 'is valid with a fun rating' do
    expect(Game.new(name: 'Game', fun_rating: 'high'))
  end

  it 'should have many characters' do
    t = Game.reflect_on_association(:characters)
    expect(t.macro).to eq(:has_many)
  end

  it 'should have many players' do
    t = Game.reflect_on_association(:players)
    expect(t.macro).to eq(:has_many)
  end
end
