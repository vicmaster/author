class RemoveTableUnities < ActiveRecord::Migration
  def change
    drop_table :unities
  end
end
