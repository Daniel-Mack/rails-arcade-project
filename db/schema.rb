# frozen_string_literal: true

ActiveRecord::Schema.define(version: 20_180_731_130_213) do
  create_table 'characters', force: :cascade do |t|
    t.string 'name'
    t.integer 'player_id'
    t.integer 'game_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'games', force: :cascade do |t|
    t.string 'name'
    t.string 'difficulty_level'
    t.string 'fun_rating'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'players', force: :cascade do |t|
    t.string 'name'
    t.string 'password_digest'
    t.string 'skill_level'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'age'
  end
end
