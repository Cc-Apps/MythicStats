# frozen_string_literal: true

FactoryBot.define do
  factory :affix do
    name { Faker::Food.dish }
    description { Faker::Food.description }
  end
end
