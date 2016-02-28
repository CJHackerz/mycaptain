class AddLinkedinToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :linkedin, :string
  end
end
