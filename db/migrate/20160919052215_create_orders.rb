class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string   "number",               :limit => 15
      t.decimal  "item_total",                         :precision => 8, :scale => 2, :default => 0.0, :null => false
      t.decimal  "total",                              :precision => 8, :scale => 2, :default => 0.0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "state"
      t.datetime "completed_at"
      t.integer  "bill_address_id"
      t.decimal  "payment_total",                      :precision => 8, :scale => 2, :default => 0.0
      t.string   "payment_state"
      t.string   "email"

      t.timestamps
    end
  end
end
