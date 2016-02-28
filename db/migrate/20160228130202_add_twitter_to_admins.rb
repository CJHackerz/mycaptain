class AddTwitterToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :twitter, :string
  end
end
