class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :order
      t.references :product
      t.integer :quantity,                            :null => false
      t.decimal :price, :precision => 8, :scale => 2, :null => false

      t.timestamps
    end
  end
end
