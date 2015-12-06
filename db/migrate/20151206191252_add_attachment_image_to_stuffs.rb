class AddAttachmentImageToStuffs < ActiveRecord::Migration
  def self.up
    change_table :stuffs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :stuffs, :image
  end
end
