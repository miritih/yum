class AddClosingOpeningTimeToSeller < ActiveRecord::Migration
  def change
    add_column :sellers, :opening_time, :time
    add_column :sellers, :closing_time, :time
  end
end
