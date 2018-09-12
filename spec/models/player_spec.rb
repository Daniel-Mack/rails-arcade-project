# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Player, type: :model do
  it 'is valid with a name' do
    expect(Player.new(name: 'Daniel', age: 4, password_digest: 'hgf'))
  end

  it 'is valid with a skill level' do
    expect(Player.new(name: 'Daniel', age: 'twogg', password_digest: 'hgf', skill_level: 'high'))
  end

  it 'is valid with an age' do
    expect(Player.new(name: 'Game', password_digest: 'hgfds', age: 30))
  end

  it 'is valid with a password' do
    expect(Player.new(name: 'Game', password_digest: 'hgfd'))
  end

  it 'should have many characters' do
    t = Player.reflect_on_association(:characters)
    expect(t.macro).to eq(:has_many)
  end

  it 'should have many players' do
    t = Player.reflect_on_association(:games)
    expect(t.macro).to eq(:has_many)
  end
end
