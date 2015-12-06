class AddDomainIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :domain_id, :integer
  end
end
