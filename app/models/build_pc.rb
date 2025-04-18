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

class BuildPc < ApplicationRecord
  CPU_PRICES = {
    'Ryzen 5 5600X'   => 180,
    'Intel i7-10700K' => 300,
    'Ryzen 9 5900X'   => 450,
    'Intel i5-11600K' => 220,
    'Intel i9-12900K' => 600,
    'Ryzen 7 5800X'   => 330,
    'i5-10400F'       => 150,
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
    '512 GB SSD' => 60,
    '1 TB'       => 90,
    '1 TB SSD'   => 100,
    '2 TB'       => 130,
    '2 TB SSD'   => 160,
    '4 TB SSD'   => 300
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
  def calculate_total_price
    cpu_price = CPU_PRICES[cpu] || 0
    gpu_price = GPU_PRICES[gpu] || 0
    ram_price = RAM_PRICES[ram] || 0
    storage_price = STORAGE_PRICES[storage] || 0
    mobo_price = MOBO_PRICES[mobo] || 0

    cpu_price + gpu_price + ram_price + storage_price + mobo_price
  end
end
