user_1 = User.create(username: 'User 1')

house_1 = House.create(
  address: '19535 Fenton St',
  city: 'New York',
  zip_code: '76521',
  image: 'https://images.unsplash.com/photo-1600585154340-be6161a56a0c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  rooms: '4',
  bathrooms: '3',
  surroundings: 'Woods',
  price: '1500000.00',
  construction_year: '2010',
  user: user_1
)

Reservation.create(
  user: user_1,
  house: house_1,
  date: Date.today+rand(10000)
)
