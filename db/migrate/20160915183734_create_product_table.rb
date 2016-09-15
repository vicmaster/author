class CreateProductTable < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, default: '', null: false
      t.text :description
      t.datetime :available_on, :deleated_at
      t.timestamps
    end
  end
end
