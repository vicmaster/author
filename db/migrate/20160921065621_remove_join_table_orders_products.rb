class RemoveJoinTableOrdersProducts < ActiveRecord::Migration
  def change
    drop_join_table :orders, :products 
  end
end
