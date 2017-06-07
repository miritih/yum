class AddCategoryIdToSellers < ActiveRecord::Migration
  def change
    add_column :sellers, :category_id, :integer
  end
end
