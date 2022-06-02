FactoryBot.define do
  factory :house do
    address { 'MyString' }
    city { 'MyString' }
    zip_code { 1 }
    image { 'MyString' }
    rooms { 1 }
    bathrooms { 1 }
    surroundings { 'MyString' }
    price { '9.99' }
    construction_year { 1 }
  end
end
