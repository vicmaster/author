class AddPriceToProduct < ActiveRecord::Migration
  def change
    add_column :products, :price, :decimal, precision: 8, scale: 2, null: false
  end
end
