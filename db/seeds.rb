
build_pc = Product.create!(
  name: "CustomPC",
  price: 1999.99,
  description: "Custom PC with Ryzen 7 CPU Nvidia 4090 GPU and 16 GB of Ram",
  product_type: 'BuildPC'
)

BuildPc.create!(
  cpu: 'AMD Ryzen 7 9800X3D',    
  gpu: 'Nvidia 4090',      
  mobo: 'MSI X670E Tomahawk',       
  name: 'CustomPC',      
  price: 1999.99,     
  ram: '16GB',      
  storage: '1TB',
  product: build_pc   
)

ready_pc = Product.create!(
  name: 'Pro Gaming PC',
  price: 2499.99,
  description: 'MSI Pro series gaming PC with a 4090 and 24GB of ram',
  product_type: 'ReadyToShipPC'
)

ReadyToShipPc.create!(
  name: "Pro Gaming PC",
  brand: 'MSI',
  price: 2499.99,
  description: 'MSI Pro series gaming PC with a 4090 and 24GB of ram',
  product: ready_pc
)

# Keyboards
keyboard1 = Product.create!(name: 'Wireless Keyboard', price: 19.99, description: 'Bluetooth Wireless Keyboard', product_type: 'Accessory')
keyboard2 = Product.create!(name: 'Mechanical Keyboard', price: 49.99, description: 'RGB Backlit Mechanical Keyboard', product_type: 'Accessory')
keyboard3 = Product.create!(name: 'Compact Keyboard', price: 24.99, description: '60% Compact Gaming Keyboard', product_type: 'Accessory')

Accessory.create!(name: keyboard1.name, price: keyboard1.price, description: keyboard1.description, product: keyboard1)
Accessory.create!(name: keyboard2.name, price: keyboard2.price, description: keyboard2.description, product: keyboard2)
Accessory.create!(name: keyboard3.name, price: keyboard3.price, description: keyboard3.description, product: keyboard3)

# Mice
mouse1 = Product.create!(name: 'Gaming Mouse', price: 29.99, description: 'High DPI RGB Gaming Mouse', product_type: 'Accessory')
mouse2 = Product.create!(name: 'Wireless Mouse', price: 34.99, description: 'Ergonomic Wireless Gaming Mouse', product_type: 'Accessory')
mouse3 = Product.create!(name: 'Lightweight Mouse', price: 39.99, description: 'Ultra-light FPS Gaming Mouse', product_type: 'Accessory')

Accessory.create!(name: mouse1.name, price: mouse1.price, description: mouse1.description, product: mouse1)
Accessory.create!(name: mouse2.name, price: mouse2.price, description: mouse2.description, product: mouse2)
Accessory.create!(name: mouse3.name, price: mouse3.price, description: mouse3.description, product: mouse3)

# Headphones
headphones1 = Product.create!(name: 'Gaming Headset', price: 59.99, description: 'Surround Sound Gaming Headset', product_type: 'Accessory')
headphones2 = Product.create!(name: 'Wireless Headset', price: 69.99, description: '2.4GHz Wireless Gaming Headset with Mic', product_type: 'Accessory')
headphones3 = Product.create!(name: 'Noise Cancelling Headphones', price: 89.99, description: 'Over-ear ANC Headphones', product_type: 'Accessory')

Accessory.create!(name: headphones1.name, price: headphones1.price, description: headphones1.description, product: headphones1)
Accessory.create!(name: headphones2.name, price: headphones2.price, description: headphones2.description, product: headphones2)
Accessory.create!(name: headphones3.name, price: headphones3.price, description: headphones3.description, product: headphones3)

# Chairs
chair1 = Product.create!(name: 'Gaming Chair', price: 129.99, description: 'Ergonomic Gaming Chair with Lumbar Support', product_type: 'Accessory')
chair2 = Product.create!(name: 'Racing Style Chair', price: 149.99, description: 'Reclining Racing Style Gaming Chair', product_type: 'Accessory')
chair3 = Product.create!(name: 'Mesh Back Chair', price: 109.99, description: 'Breathable Mesh Gaming Chair', product_type: 'Accessory')

Accessory.create!(name: chair1.name, price: chair1.price, description: chair1.description, product: chair1)
Accessory.create!(name: chair2.name, price: chair2.price, description: chair2.description, product: chair2)
Accessory.create!(name: chair3.name, price: chair3.price, description: chair3.description, product: chair3)

# Webcams
webcam1 = Product.create!(name: '1080p Webcam', price: 59.99, description: 'Full HD Webcam with Auto Focus', product_type: 'Accessory')
webcam2 = Product.create!(name: '4K Streaming Webcam', price: 99.99, description: 'Ultra HD 4K Streaming Webcam', product_type: 'Accessory')
webcam3 = Product.create!(name: 'Webcam with Ring Light', price: 79.99, description: 'HD Webcam with Built-in Lighting', product_type: 'Accessory')

Accessory.create!(name: webcam1.name, price: webcam1.price, description: webcam1.description, product: webcam1)
Accessory.create!(name: webcam2.name, price: webcam2.price, description: webcam2.description, product: webcam2)
Accessory.create!(name: webcam3.name, price: webcam3.price, description: webcam3.description, product: webcam3)

# Monitors
monitor1 = Product.create!(name: '144Hz Gaming Monitor', price: 199.99, description: '27-inch 144Hz Full HD Gaming Monitor', product_type: 'Accessory')
monitor2 = Product.create!(name: '240Hz Esports Monitor', price: 299.99, description: '24-inch 240Hz Competitive Gaming Monitor', product_type: 'Accessory')
monitor3 = Product.create!(name: 'Curved Ultrawide Monitor', price: 349.99, description: '34-inch Curved Ultrawide Gaming Monitor', product_type: 'Accessory')

Accessory.create!(name: monitor1.name, price: monitor1.price, description: monitor1.description, product: monitor1)
Accessory.create!(name: monitor2.name, price: monitor2.price, description: monitor2.description, product: monitor2)
Accessory.create!(name: monitor3.name, price: monitor3.price, description: monitor3.description, product: monitor3)
