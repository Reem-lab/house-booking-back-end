FactoryBot.define do
  factory :user do
<<<<<<< HEAD
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    password_confirmation { password }
=======
    username { 'MyString' }
>>>>>>> dev
  end
end
