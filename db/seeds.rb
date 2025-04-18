
jay = User.create!(
  username:     'Jay',
  email:    'Jay@email.com',
  password: 'password',
  password_confirmation: 'password',

)

jay.create_cart

keyboard = Product.create!(
  name: 'Wireless Mouse',
  price: 19.99,
  description: 'Bluetooth Wireless Mouse',
  product_type: 'Accessory'
)

Accessory.create!(
  name: 'Wireless Mouse',
  price: 19.99,
  description: 'Bluetooth Wireless Mouse',
  product: keyboard
)



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
  
jay.cart.cart_items.create!(product: keyboard)
jay.cart.cart_items.create!(product: build_pc)
jay.cart.cart_items.create!(product: ready_pc)