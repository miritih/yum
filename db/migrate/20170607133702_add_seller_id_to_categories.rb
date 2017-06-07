class AddSellerIdToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :seller_id, :integer
  end
end