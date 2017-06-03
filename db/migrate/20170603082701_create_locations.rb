class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :postal_address
      t.timestamps null: false
    end
  end
end
