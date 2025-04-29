class AddImageToReadypc < ActiveRecord::Migration[7.1]
  def change
    add_column :readypcs, :image, :string
  end
end
