class AddAttachmentCoverToWorkshops < ActiveRecord::Migration
  def self.up
    change_table :workshops do |t|
      t.attachment :cover
    end
  end

  def self.down
    remove_attachment :workshops, :cover
  end
end
