class AddAboutToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :about, :text
  end
end
