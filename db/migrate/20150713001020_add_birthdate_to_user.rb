class AddBirthdateToUser < ActiveRecord::Migration
  def change
    add_column :users, :birthdate, :date
    add_column :users, :age, :integer
  end
end
