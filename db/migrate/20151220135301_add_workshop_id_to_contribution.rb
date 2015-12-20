class AddWorkshopIdToContribution < ActiveRecord::Migration
  def change
    add_column :contributions, :workshop_id, :integer
  end
end
