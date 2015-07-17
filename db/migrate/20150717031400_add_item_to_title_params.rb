class AddItemToTitleParams < ActiveRecord::Migration
  def change
    add_column :title_params, :itemTitle, :string
  end
end
