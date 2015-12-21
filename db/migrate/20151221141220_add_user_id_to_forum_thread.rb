class AddUserIdToForumThread < ActiveRecord::Migration
  def change
    add_column :forum_threads, :user_id, :integer
  end
end
