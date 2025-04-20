Readypc.create!(
    brand:  'HP',
    name:   'Envy 2-in-1',
    size:   16,
    processor: 'Intel Core Ultra 7',
    ram:    32,
    storage: '2TB SSD',
    color:  'Glacier Silver',
    price:  1449.99
)

Readypc.create!(
    brand:  'Apple',
    name:   'MacBook Pro',
    size:   16.2,
    processor: 'Apple M4 Pro chip',
    ram:    24,
    storage: '512GB SSD',
    color:  'Spcae Black',
    price:  2499.00
)

Readypc.create!(
    brand:  'Samsung',
    name:   'Galaxy Book 4',
    size:   15.6,
    processor: 'Intel Core 7',
    ram:    16,
    storage: '512GB SSD',
    color:  'Silver',
    price:  899.99
)

Readypc.create!(
    brand:  'Lenovo',
    name:   'Yogi 7i 2-in-1',
    size:   16,
    processor: 'Intel Core Ultra 7',
    ram:    16,
    storage: '1TB SSD',
    color:  'Storm Grey',
    price:  749.99
)

user1 = User.create!(
  user:     'bob',
  email:    'bob@email.com',
  password: 'password'
)

