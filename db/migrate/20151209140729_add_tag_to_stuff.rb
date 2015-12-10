class AddTagToStuff < ActiveRecord::Migration
  def change
    add_column :stuffs, :tag, :text
  end
end
