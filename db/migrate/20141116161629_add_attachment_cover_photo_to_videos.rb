class AddAttachmentCoverPhotoToVideos < ActiveRecord::Migration
  def self.up
    change_table :videos do |t|
      t.attachment :cover_photo
    end
  end

  def self.down
    remove_attachment :videos, :cover_photo
  end
end
