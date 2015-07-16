class CreateTitleParams < ActiveRecord::Migration
  def change
    create_table :title_params do |t|
      t.date :date
      t.string :note
      t.integer :dataset_id

      t.timestamps null: false
    end
  end
end
