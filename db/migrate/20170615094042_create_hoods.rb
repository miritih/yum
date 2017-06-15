class CreateHoods < ActiveRecord::Migration
  def change
    create_table :hoods do |t|
      t.string :name
      t.integer :city_id

      t.timestamps null: false
    end
  end
end
