class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.string :title
      t.string :note
      t.integer :year
      t.integer :week

      t.timestamps null: false
    end
  end
end
