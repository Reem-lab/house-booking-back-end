user1 = User.create(username: 'sahar')
house1 = House.create(id: 1, user_id: 1, address: 'st 33/10', city: 'alexandria', zip_code: 1245, image: 'none', 
  bathrooms: 12, rooms: 15, surroundings: 'sea', price: 250, construction_year: 1994)
house2 = House.create(id: 2, user_id: 1, address: 'st 30/10', city: 'beirut', zip_code: 1101,
  image: 'none', bathrooms: 2, rooms: 1, surroundings: 'city', price: 250, construction_year: 2004)
