# frozen_string_literal: true

FactoryBot.define do
  factory :player do
    name 'Daniel'
    password_digest 'dfkfjs'
    skill_level 'High'
    age 28
  end
end
