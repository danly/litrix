class AddOwnerToMilestone < ActiveRecord::Migration
  def change
    add_column :milestones, :user_id, :integer
  end
end
