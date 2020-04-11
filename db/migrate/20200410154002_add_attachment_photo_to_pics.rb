class AddAttachmentPhotoToPics < ActiveRecord::Migration[6.0]
  def self.up
    change_table :pics do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :pics, :photo
  end
end
