class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :name
      t.string :image_url
      t.text :description
      t.integer :location_id
      t.timestamps null: false
    end
  end
end
