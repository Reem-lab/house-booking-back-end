require 'faker'

FactoryBot.define do
  factory :user do
    sequence(:username) do
      Faker::Name.unique.name.length > 20 ? Faker::Name.unique.name[0..19] : Faker::Name.unique.name
    end
    email { Faker::Internet.unique.email }
    password { 'password' }
    password_confirmation { password }
    role { %w[admin user][rand(0..1)] }
  end
end
