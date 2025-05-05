# frozen_string_literal: true

# == Schema Information
#
# Table name: build_pcs
#
#  id         :bigint           not null, primary key
#  cpu        :string
#  gpu        :string
#  mobo       :string
#  name       :string
#  price      :decimal(, )
#  ram        :string
#  storage    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
#  product_id :bigint           not null
#
# Indexes
#
#  index_build_pcs_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#
class BuildPc < ApplicationRecord
  validates :name, :cpu, :gpu, :ram, :storage, :mobo, :price, presence: true
  belongs_to :product
  has_one :cart_item, through: :product, dependent: :destroy

  CPU_PRICES = {
    'Ryzen 5 5600X'   => 180,
    'Intel i7-10700K' => 300,
    'Ryzen 9 5900X'   => 450,
    'Intel i5-11600K' => 220,
    'Intel i9-12900K' => 600,
    'Ryzen 7 5800X'   => 330,
    'Intel i5-10400F' => 150,
    'Ryzen 5 3600'    => 120
  }

  GPU_PRICES = {
    'RTX 4060'    => 300,
    'RTX 3070'    => 500,
    'RTX 3080'    => 700,
    'GTX 1660 Ti' => 250,
    'RTX 4090'    => 1600,
    'RTX 3060 Ti' => 400,
    'RX 580'      => 180,
    'GTX 1650'    => 150
  }

  RAM_PRICES = {
    '8 GB'   => 40,
    '16 GB'  => 70,
    '32 GB'  => 120,
    '64 GB'  => 200,
    '128 GB' => 350
  }

  STORAGE_PRICES = {
    '500 GB' => 45,
    '512 GB' => 60,
    '1 TB'   => 90,
    '2 TB'   => 130,
    '4 TB'   => 300
  }

  MOBO_PRICES = {
    'ASrock B450M'            => 80,
    'MSI Z490-A PRO'          => 150,
    'ROG Crosshair VIII Hero' => 300,
    'Gigabyte Z590 AORUS'     => 180,
    'ROG Strix Z690-E'        => 350,
    'MSI MAG B550 TOMAHAWK'   => 140,
    'ASRock H510M'            => 70,
    'MSI B450 TOMAHAWK MAX'   => 100
  }

  CPU_DESCRIPTIONS = {
    'Ryzen 5 5600X'   => 'Reliable mid-range AMD processor.',
    'Intel i7-10700K' => 'High-performance CPU for gaming and heavy workloads.',
    'Ryzen 9 5900X'   => 'Top-tier processor for enthusiasts and creators.',
    'Intel i5-11600K' => 'Great value CPU for gamers and streamers.',
    'Intel i9-12900K' => 'Ultimate performance for heavy tasks.',
    'Ryzen 7 5800X'   => 'Powerful AMD chip for gaming and multitasking.',
    'Inteli5-10400F'  => 'Budget-friendly CPU for everyday use.',
    'Ryzen 5 3600'    => 'Affordable yet capable processor for gaming.'
  }

  GPU_DESCRIPTIONS = {
    'RTX 4060'    => 'Great for 1080p and light 1440p gaming with good efficiency.',
    'RTX 3070'    => 'High-performance 1440p GPU, solid ray tracing and DLSS support.',
    'RTX 3080'    => 'Excellent for 4K gaming, powerful and future-proof.',
    'GTX 1660 Ti' => 'Budget-friendly GPU for solid 1080p gaming without ray tracing.',
    'RTX 4090'    => 'Top-tier flagship GPU, unmatched performance for 4K and AI workloads.',
    'RTX 3060 Ti' => 'Great value for 1080p/1440p gaming with ray tracing support.',
    'RX 580'      => 'Older but capable card for entry-level 1080p gaming.',
    'GTX 1650'    => 'Entry-level card suitable for light gaming and eSports titles.'
  }

  RAM_DESCRIPTIONS = {
    '8 GB'   => 'Basic capacity suitable for web browsing and light tasks.',
    '16 GB'  => 'Ideal for most gamers and multitaskers.',
    '32 GB'  => 'Great for content creation, gaming, and future-proofing.',
    '64 GB'  => 'Designed for heavy multitasking, VMs, and professional workflows.',
    '128 GB' => 'Extreme memory for servers, simulations, and advanced workloads.'
  }

  STORAGE_DESCRIPTIONS = {
    '500 GB' => 'Basic storage for OS and a few apps or games.',
    '512 GB' => 'Fast SSD storage for core programs and light gaming.',
    '1 TB'   => 'Good balance of speed and space for most users.',
    '2 TB'   => 'Plenty of room for games, media, and large files.',
    '4 TB'   => 'Massive storage for heavy users, media creators, and backups.'
  }

  MOBO_DESCRIPTIONS = {
    'ASrock B450M'            => 'Affordable microATX board for Ryzen builds.',
    'MSI Z490-A PRO'          => 'Solid Intel board with good features for its price.',
    'ROG Crosshair VIII Hero' => 'Premium AMD board for enthusiasts and overclockers.',
    'Gigabyte Z590 AORUS'     => 'High-end Intel board with great power delivery.',
    'ROG Strix Z690-E'        => 'Flagship motherboard with PCIe 5.0 and DDR5 support.',
    'MSI MAG B550 TOMAHAWK'   => 'Excellent mid-range AMD board with good thermals.',
    'ASRock H510M'            => 'Basic Intel board for budget builds.',
    'MSI B450 TOMAHAWK MAX'   => 'Reliable and popular board for Ryzen CPUs.'
  }

  def self.all_descriptions
    {
      cpu:     CPU_DESCRIPTIONS,
      gpu:     GPU_DESCRIPTIONS,
      ram:     RAM_DESCRIPTIONS,
      storage: STORAGE_DESCRIPTIONS,
      mobo:    MOBO_DESCRIPTIONS
    }
  end

  def calculate_total_price
    cpu_price = CPU_PRICES[cpu] || 0
    gpu_price = GPU_PRICES[gpu] || 0
    ram_price = RAM_PRICES[ram] || 0
    storage_price = STORAGE_PRICES[storage] || 0
    mobo_price = MOBO_PRICES[mobo] || 0

    cpu_price + gpu_price + ram_price + storage_price + mobo_price
  end
end
