class RemoveIndexUserToOrder < ActiveRecord::Migration
  def change
    remove_reference :orders, :user_id
  end
end
