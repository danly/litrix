class AddAgeToTitleParams < ActiveRecord::Migration
  def change
    add_column :title_params, :age, :integer
  end
end
