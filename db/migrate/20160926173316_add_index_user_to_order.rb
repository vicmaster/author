class AddIndexUserToOrder < ActiveRecord::Migration
  def change
    add_reference :orders, :user_id
  end
end
