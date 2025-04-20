# === READY PCS ===
ready_pcs = [
  { brand: 'HP', name: 'Envy 2-in-1', size: 16, processor: 'Intel Core Ultra 7', ram: 32, storage: '2TB SSD', color: 'Glacier Silver', price: 1449.99 },
  { brand: 'Apple', name: 'MacBook Pro', size: 16.2, processor: 'Apple M4 Pro chip', ram: 24, storage: '512GB SSD', color: 'Space Black', price: 2499.00 },
  { brand: 'Samsung', name: 'Galaxy Book 4', size: 15.6, processor: 'Intel Core 7', ram: 16, storage: '512GB SSD', color: 'Silver', price: 899.99 },
  { brand: 'Lenovo', name: 'Yogi 7i 2-in-1', size: 16, processor: 'Intel Core Ultra 7', ram: 16, storage: '1TB SSD', color: 'Storm Grey', price: 749.99 }
]

ready_pcs.each do |spec|
  product = Product.create!(
    name: spec[:name],
    price: spec[:price],
    description: "#{spec[:brand]} #{spec[:name]} with #{spec[:processor]}, #{spec[:ram]} GB RAM, #{spec[:storage]}, Color: #{spec[:color]}",
    product_type: 'ReadyPC'
  )

  Readypc.create!(
    brand: spec[:brand],
    name: spec[:name],
    size: spec[:size],
    processor: spec[:processor],
    ram: spec[:ram],
    storage: spec[:storage],
    color: spec[:color],
    price: spec[:price],
    product: product
  )
end


# === ACCESSORIES ===
accessories = [
  # Keyboards
  { name: 'Wireless Keyboard', price: 19.99, description: 'Bluetooth Wireless Keyboard' },
  { name: 'Mechanical Keyboard', price: 49.99, description: 'RGB Backlit Mechanical Keyboard' },
  { name: 'Compact Keyboard', price: 24.99, description: '60% Compact Gaming Keyboard' },

  # Mice
  { name: 'Gaming Mouse', price: 29.99, description: 'High DPI RGB Gaming Mouse' },
  { name: 'Wireless Mouse', price: 34.99, description: 'Ergonomic Wireless Gaming Mouse' },
  { name: 'Lightweight Mouse', price: 39.99, description: 'Ultra-light FPS Gaming Mouse' },

  # Headphones
  { name: 'Gaming Headset', price: 59.99, description: 'Surround Sound Gaming Headset' },
  { name: 'Wireless Headset', price: 69.99, description: '2.4GHz Wireless Gaming Headset with Mic' },
  { name: 'Noise Cancelling Headphones', price: 89.99, description: 'Over-ear ANC Headphones' },

  # Chairs
  { name: 'Gaming Chair', price: 129.99, description: 'Ergonomic Gaming Chair with Lumbar Support' },
  { name: 'Racing Style Chair', price: 149.99, description: 'Reclining Racing Style Gaming Chair' },
  { name: 'Mesh Back Chair', price: 109.99, description: 'Breathable Mesh Gaming Chair' },

  # Webcams
  { name: '1080p Webcam', price: 59.99, description: 'Full HD Webcam with Auto Focus' },
  { name: '4K Streaming Webcam', price: 99.99, description: 'Ultra HD 4K Streaming Webcam' },
  { name: 'Webcam with Ring Light', price: 79.99, description: 'HD Webcam with Built-in Lighting' },

  # Monitors
  { name: '144Hz Gaming Monitor', price: 199.99, description: '27-inch 144Hz Full HD Gaming Monitor' },
  { name: '240Hz Esports Monitor', price: 299.99, description: '24-inch 240Hz Competitive Gaming Monitor' },
  { name: 'Curved Ultrawide Monitor', price: 349.99, description: '34-inch Curved Ultrawide Gaming Monitor' }
]

accessories.each do |spec|
  product = Product.create!(
    name: spec[:name],
    price: spec[:price],
    description: spec[:description],
    product_type: 'Accessory'
  )

  Accessory.create!(
    name: spec[:name],
    price: spec[:price],
    description: spec[:description],
    product: product
  )
end

