require 'faker'

FactoryBot.define do
  factory :user do
    username { "Aime Malaika" }
    email { Faker::Internet.unique.email }
    password { "password" }
    password_confirmation { "password" }
  end
end
