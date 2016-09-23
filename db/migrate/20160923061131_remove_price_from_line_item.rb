class RemovePriceFromLineItem < ActiveRecord::Migration
  def change
    remove_column :line_items, :price
  end
end
