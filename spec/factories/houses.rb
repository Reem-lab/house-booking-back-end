require 'faker'

FactoryBot.define do
  factory :house do
    sequence(:address) { Faker::Address.street_address }
    sequence(:city) { Faker::Address.city }
    sequence(:zip_code) { Faker::Number.non_zero_digit }
    sequence(:image) { Faker::LoremFlickr.image }
    sequence(:bathrooms) { Faker::Number.non_zero_digit }
    sequence(:rooms) { Faker::Number.non_zero_digit }
    sequence(:surroundings) { Faker::Lorem.word }
    sequence(:price) { Faker::Number.non_zero_digit }
    sequence(:construction_year) { Faker::Number.non_zero_digit }
    user = User.first
    user_id { user.id }
  end
end
