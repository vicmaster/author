class RenameProductCategoryToCategory < ActiveRecord::Migration
  def change
    rename_table :product_categories, :categories
  end
end
