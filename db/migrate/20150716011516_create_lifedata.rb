class CreateLifedata < ActiveRecord::Migration
  def change
    create_table :lifedata do |t|
      t.string :country
      t.string :gho
      t.string :gender
      t.integer :age
      t.integer :census_year
      t.timestamps null: false
    end
  end
end
