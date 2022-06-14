require 'rails_helper'

RSpec.describe Reservation, type: :model do
  before :each do
    @user = User.new(username: 'test', email: 'test@test.com', password: '123123')
    @user.save

    @house = House.new(
      user: @user,
      address: 'st 33/10',
      city: 'alexandria',
      zip_code: 1245,
      image: 'https://images.unsplash.com/photo-1600585154340-be6161a56a0c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      bathrooms: 12,
      rooms: 15,
      surroundings: 'sea',
      price: 250,
      construction_year: 1994
    )
    @house.save
  end

  subject do
    Reservation.new(user: @user, house: @house, date: Date.today+rand(10000))
  end
  before { subject.save }

  describe 'validate data' do
    it 'it should have a date' do
      subject.date = nil
      expect(subject).to_not be_valid
    end
  end
end
