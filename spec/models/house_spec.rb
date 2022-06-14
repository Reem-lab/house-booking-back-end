require 'rails_helper'

RSpec.describe House, type: :model do
  before :each do
    @user = User.new(username: 'test', email: 'test@test.com', password: '123123')
    @user.save  
  end

  subject do
    House.new(
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
  end
  before { subject.save }

  describe 'validate data' do
    it 'it should have an address' do
      subject.address = nil
      expect(subject).to_not be_valid
    end

    it 'it should have an city' do
      subject.city = nil
      expect(subject).to_not be_valid
    end

    it 'it should have an zip code' do
      subject.zip_code = nil
      expect(subject).to_not be_valid
    end

    it 'it should have an image' do
      subject.image = nil
      expect(subject).to_not be_valid
    end

    it 'it should have an bathrooms' do
      subject.bathrooms = nil
      expect(subject).to_not be_valid
    end

    it 'it should have an rooms' do
      subject.rooms = nil
      expect(subject).to_not be_valid
    end

    it 'it should have an surroundings' do
      subject.surroundings = nil
      expect(subject).to_not be_valid
    end

    it 'it should have an price' do
      subject.price = nil
      expect(subject).to_not be_valid
    end

    it 'it should have an construction year' do
      subject.construction_year = nil
      expect(subject).to_not be_valid
    end
  end
end
