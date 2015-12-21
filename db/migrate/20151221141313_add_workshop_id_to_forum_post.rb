class AddWorkshopIdToForumPost < ActiveRecord::Migration
  def change
    add_column :forum_threads, :workshop_id, :integer
  end
end
