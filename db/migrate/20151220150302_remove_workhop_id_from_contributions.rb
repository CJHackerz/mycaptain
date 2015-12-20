class RemoveWorkhopIdFromContributions < ActiveRecord::Migration
  def change
    remove_column :contributions, :workhop_id, :integer
  end
end
