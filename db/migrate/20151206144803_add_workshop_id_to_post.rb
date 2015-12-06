class AddWorkshopIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :workshop_id, :integer
  end
end
