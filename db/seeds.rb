# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

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
)
