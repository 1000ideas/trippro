class AddAttachmentFileToScreenshots < ActiveRecord::Migration
  def self.up
    change_table :screenshots do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :screenshots, :file
  end
end
