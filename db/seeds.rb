


BuildPc.create!(
  name:    'PC 1',
  cpu:     'Ryzen 5 5600X',
  gpu:     'Nvidia RTX 4060',
  ram:     '32 GB',
  storage: '2 TB',
  mobo:    'ASrock B450M',
  price:   850.00
)

BuildPc.create!(
  name:    'PC 2',
  cpu:     'Intel i7-10700K',
  gpu:     'Nvidia RTX 3070',
  ram:     '16 GB',
  storage: '1 TB',
  mobo:    'MSI Z490-A PRO',
  price:   1200.00
)

BuildPc.create!(
  name:    'PC 3',
  cpu:     'AMD Ryzen 9 5900X',
  gpu:     'Nvidia RTX 3080',
  ram:     '64 GB',
  storage: '2 TB',
  mobo:    'Asus ROG Crosshair VIII Hero',
  price:   2200.00
)

BuildPc.create!(
  name:    'PC 4',
  cpu:     'Intel i5-11600K',
  gpu:     'Nvidia GTX 1660 Ti',
  ram:     '32 GB',
  storage: '1 TB',
  mobo:    'Gigabyte Z590 AORUS ELITE',
  price:   1000.00
)

BuildPc.create!(
  name:    'PC 5',
  cpu:     'Intel i9-12900K',
  gpu:     'Nvidia RTX 4090',
  ram:     '128 GB',
  storage: '4 TB',
  mobo:    'Asus ROG Strix Z690-E',
  price:   3500.00
)

BuildPc.create!(
  name:    'PC 6',
  cpu:     'AMD Ryzen 7 5800X',
  gpu:     'Nvidia RTX 3060 Ti',
  ram:     '32 GB',
  storage: '1 TB',
  mobo:    'MSI MAG B550 TOMAHAWK',
  price:   1500.00
)

BuildPc.create!(
  name:    'PC 7',
  cpu:     'Intel i5-10400F',
  gpu:     'AMD Radeon RX 580',
  ram:     '16 GB',
  storage: '512 GB',
  mobo:    'ASRock H510M',
  price:   650.00
)

BuildPc.create!(
  name:    'PC 8',
  cpu:     'AMD Ryzen 5 3600',
  gpu:     'Nvidia GTX 1650',
  ram:     '8 GB',
  storage: '500 GB',
  mobo:    'MSI B450 TOMAHAWK MAX',
  price:   500.00
=======
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

