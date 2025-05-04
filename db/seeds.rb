# === READY PCS ===
ready_pcs = [
  { brand: 'HP',
    name: 'Envy 2-in-1',
    size: 16,
    processor: 'Intel Core Ultra 7',
    ram: 32,
    storage: '2TB SSD',
    color: 'Glacier Silver',
    price: 1449.99,
    image: 'placeholderlaptop.jpg' },

  { brand: 'Apple',
    name: 'MacBook Pro',
    size: 16.2,
    processor: 'Apple M4 Pro chip',
    ram: 24,
    storage: '512GB SSD',
    color: 'Space Black',
    price: 2499.00,
    image: 'placeholderlaptop.jpg'},

  { brand: 'Samsung',
    name: 'Galaxy Book 4',
    size: 15.6,
    processor: 'Intel Core 7',
    ram: 16,
    storage: '512GB SSD',
    color: 'Silver',
    price: 899.99,
    image: 'placeholderlaptop.jpg'},

  { brand: 'Lenovo',
    name: 'Yogi 7i 2-in-1',
    size: 16,
    processor: 'Intel Core Ultra 7',
    ram: 16,
    storage: '1TB SSD',
    color: 'Storm Grey',
    price: 749.99,
    image: 'placeholderlaptop.jpg'}
]

ready_pcs.each do |spec|
  product = Product.create!(
    name: spec[:name],
    price: spec[:price],
    description: "#{spec[:brand]} #{spec[:name]} with #{spec[:processor]}, #{spec[:ram]} GB RAM, #{spec[:storage]}, Color: #{spec[:color]}",
    product_type: 'ReadyPC',
    image: spec[:image]
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
  { name: 'SteelSeries Apex 3 Gaming Keyboard',
    price: 79.99,
    description: 'RGB Gaming Keyboard - 10-Zone RGB Illumination - IP32 Water Resistant - Premium Magnetic Wrist Rest (Whisper Quiet Gaming Switch)',
    image: 'accessories/keyboards/steelseries_apex3.jpg'},

  { name: 'Redragon K515 PRO Keyboard',
    price: 34.99,
    description: 'RGB Wireless Membrane Gaming Keyboard, 98 Keys Mechanical-Feel Keyboard w/Smooth Linear Switch, On-Board Macro & Multimedia Keys, Detachable Wrist Rest, Software Supported',
    image: 'accessories/keyboards/reddragon_k515.jpg'},

  { name: 'Logitech G915 Keyboard',
    price: 149.99,
    description: 'RGB Mechanical Gaming Keyboard, Low Profile GL Clicky Key Switch, LIGHTSYNC RGB, Advanced LIGHTSPEED Wireless and Bluetooth Support - Clicky,Black',
    image: 'accessories/keyboards/Logitech_G915.jpg'},

  # Mice
  { name: 'Logitech G502 Mouse',
    price: 92.13,
    description: 'Wireless Gaming Mouse with Hero 25K Sensor, PowerPlay Compatible, Tunable Weights and Lightsync RGB - Black',
    image:  'accessories/mouses/logitech_g502.jpg'},

  { name: 'Razer Basilisk Mouse',
    price: 99.99,
    description: 'HyperSpeed Wireless Gaming Mouse: Fastest Gaming Mouse Switch - 20K DPI Optical Sensor - Chroma RGB Lighting - 11 Programmable Buttons - 100 Hr Battery - Classic Black',
    image:  'accessories/mouses/razer_basilisk.jpg'},

  { name: 'Corsair Ironclaw Mouse',
    price: 69.99,
    description: 'WIRELESS RGB Rechargeable Gaming Mouse with Slipstream Technology - 18,000 DPI - 3-Zone RGB Multi-Color Backlighting - Black',
    image:  'accessories/mouses/corsair_ironclaw.jpg'},

  # Headsets
  { name: 'Corsair Void Elite Headset',
    price: 69.99,
    description: 'Wireless Gaming Headset - 7.1 Surround Sound - Omni-Directional Microphone - Microfiber Mesh Earpads - Up to 40ft Range - iCUE Compatible - PC, Mac, PS5, PS4 - Carbon',
    image:  'accessories/headset/corsair_void.jpg'},

  { name: 'Turtle Beach Stealth 500 Headset',
    price: 62.00,
    description: 'Wireless Amplified Gaming Headset for PC, PS5, PS4, & Mobile - 40-Hr Battery, Bluetooth, Memory Foam Cushions, Flip-to-Mute Mic, EQ Presets, Companion App - Black',
    image:  'accessories/headset/turtlebeach_stealth.jpg'},
  { name: 'Logitech G Astro Headset',
    price: 46.49,
    description: 'Wired Gaming Headset for PlayStation 5/4, Xbox S|X, Nintendo Switch, PC: 3.5mm Headphone Jack, 32mm Drivers, Flip-to-Mute Mic, Over-Ear - Grey',
    image:  'accessories/headset/logitech_g_astro.jpg'},

  # Chairs
  { name: 'GTRacing Gaming Chair',
    price: 139.49,
    description: 'Gaming Chair with Footrest, High Back Computer Chair Ergonomic Game Desk Chair Racing Executive Adjustable Swivel Rocker with Headrest and Lumbar Support',
    image:  'accessories/chairs/gtracing_chair.jpg'},

  { name: 'GTPlayer Gaming Chair',
    price: 143.99,
    description: 'Gaming Chair with Footrest, Big and Tall Game Chair 350lb Racing Style Computer Chair, Ergonomic Executive Office Chair High Back with Lumbar Support and Recliner, Light Gray',
    image:  'accessories/chairs/gtplayer_chair.jpg'},
  { name: 'Corsair TC100 Gaming Chair',
    price: 219.99,
    description: 'Relaxed Gaming Chair - Fabric - Racing-Inspired Design - Lumbar Pillow - Detachable Memory Foam Neck Pillow - Adjustable Seat Height - Adjustable Armrests - Gray and Black',
    image:  'accessories/chairs/corsair_tc100.jpg'},



  # Webcams
  { name: 'Logitech C920 HD Pro Webcam',
    price: 69.48,
    description: 'Full HD 1080p/30fps Video Calling, Clear Stereo Audio, HD Light Correction, Works with Skype, Zoom, FaceTime, Hangouts, PC/Mac/Laptop/Macbook/Tablet - Black',
    image:  'accessories/webcam/logitech_c920.jpg'},
  { name: 'Razer Kiyo Streaming Webcam',
    price: 46.00,
    description: '1080p 30 FPS / 720p 60 FPS - Ring Light w/Adjustable Brightness - Built-in Microphone - Advanced Autofocus',
    image:  'accessories/webcam/razer_kiyo.jpg'},
  { name: 'Insta360 Webcam',
    price: 199.99,
    description: 'PTZ 4K Webcam for PC/Mac, 1/2" Sensor, AI Tracking, HDR, AI Noise-Canceling Mic, Gesture Control for Streaming, Video Calls, Gaming, Works with Zoom, Teams, Twitch & More',
    image:  'accessories/webcam/insta_360.jpg'},
  


  # Monitors
  { name: 'Acer Nitro Gaming Monitor',
    price: 119.99,
    description: 'Full HD (1920 x 1080) VA Gaming Monitor | AMD FreeSync Premium Technology | 165Hz Refresh Rate | 1ms (VRB) | ZeroFrame Design | 1 x Display Port 1.2 & 2 x HDMI 2.0,Black',
    image:  'accessories/monitor/acer_nitro.jpg'},
  { name: 'Asus Tuf Gaming Monitor',
    price: 189.00,
    description: 'HDR Monitor (VG27AQ1A) - QHD (2560 x 1440), IPS, 170Hz (Supports 144Hz), 1ms, Extreme Low Motion Blur, Speaker, G-SYNC Compatible, VESA Mountable, DisplayPort, HDMI,BLACK',
    image:  'accessories/monitor/asus_tuf.jpg'},
  { name: 'Aoc Curved Gaming Monitor',
    price: 199.99,
    description: 'Curved Frameless Gaming Monitor 2K QHD, 1500R Curved VA, 180Hz, 0.5ms Response Time, 2X Display Port, 2X HDMI, Gaming Console',
    image:  'accessories/monitor/aoc_curved_monitor.jpg'},
  
  
]

accessories.each do |spec|
  product = Product.create!(
    name: spec[:name],
    price: spec[:price],
    description: spec[:description],
    image: spec[:image],
    product_type: 'Accessory'
  )

  Accessory.create!(
    name: spec[:name],
    price: spec[:price],
    description: spec[:description],
    product: product,
    image: spec[:image]
  )
end

