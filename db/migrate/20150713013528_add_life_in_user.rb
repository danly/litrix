class AddLifeInUser < ActiveRecord::Migration
  def change
    add_column :users, :total_life, :integer
  end
end
