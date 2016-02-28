class AddFacebookToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :facebook, :string
  end
end
