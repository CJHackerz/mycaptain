class AddWorkshopIdToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :workshop_id, :integer
  end
end
