class AddAttachmentImageToContentImages < ActiveRecord::Migration
  def self.up
    change_table :content_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :content_images, :image
  end
end
