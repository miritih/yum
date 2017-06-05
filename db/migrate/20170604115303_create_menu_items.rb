class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :name
      t.integer :seller_id
      t.decimal :price, precision: 8, scale: 2
      t.string :image_url
      t.text :description
      
      t.timestamps null: false
    end
  end
end
