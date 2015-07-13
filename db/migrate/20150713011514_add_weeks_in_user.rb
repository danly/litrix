class AddWeeksInUser < ActiveRecord::Migration
  def change
    add_column :users, :total_weeks, :integer
    add_column :users, :current_weeks, :integer
  end
end
