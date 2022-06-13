user_1 = User.create(username: 'sahar', email:"sahar@example.com", password: '123123', password_confirmation: '123123')

house_1 = House.create(
  user: user_1,
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

house_2 = House.create(
  user: user_1,
  address: 'st 30/10',
  city: 'beirut',
  zip_code: 1101,
  image: 'https://images.unsplash.com/photo-1605146768851-eda79da39897?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  bathrooms: 2,
  rooms: 1,
  surroundings: 'city',
  price: 250,
  construction_year: 2004
)

house_3 = House.create(
  user: user_1,
  address: 'st 30/10',
  city: 'beirut',
  zip_code: 1101,
  image: 'https://images.unsplash.com/photo-1605146768851-eda79da39897?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  bathrooms: 2,
  rooms: 1,
  surroundings: 'city',
  price: 250,
  construction_year: 2004
)

house_4 = House.create(
  user: user_1,
  address: 'st 30/10',
  city: 'beirut',
  zip_code: 1101,
  image: 'https://images.unsplash.com/photo-1605146768851-eda79da39897?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  bathrooms: 2,
  rooms: 1,
  surroundings: 'city',
  price: 250,
  construction_year: 2004
)

house_5 = House.create(
  user: user_1,
  address: 'st 30/10',
  city: 'beirut',
  zip_code: 1101,
  image: 'https://images.unsplash.com/photo-1605146768851-eda79da39897?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  bathrooms: 2,
  rooms: 1,
  surroundings: 'city',
  price: 250,
  construction_year: 2004
)

house_6 = House.create(
  user: user_1,
  address: 'st 30/10',
  city: 'beirut',
  zip_code: 1101,
  image: 'https://images.unsplash.com/photo-1605146768851-eda79da39897?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  bathrooms: 2,
  rooms: 1,
  surroundings: 'city',
  price: 250,
  construction_year: 2004
)

Reservation.create(user: user_1, house: house_1, date: Date.today+rand(10000))
Reservation.create(user: user_1, house: house_2, date: Date.today+rand(10000))
Reservation.create(user: user_1, house: house_2, date: Date.today+rand(10000))
