class AddSkuToProduct < ActiveRecord::Migration
  def change
    add_column :products, :sku, :string, default: '', null: false
  end
end
