FactoryBot.define do
  factory :jwt_denylist do
    jti { 'MyString' }
    exp { '2022-06-02 06:06:13' }
  end
end
