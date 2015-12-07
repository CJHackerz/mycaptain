class AddResponseIdToReply < ActiveRecord::Migration
  def change
    add_column :replies, :response_id, :integer
  end
end
