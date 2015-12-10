class AddTagToEmbedurl < ActiveRecord::Migration
  def change
    add_column :embedurls, :tag, :text
  end
end
