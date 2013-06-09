class AddAttachmentPhotoToPieces < ActiveRecord::Migration
  def self.up
    change_table :pieces do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :pieces, :photo
  end
end
