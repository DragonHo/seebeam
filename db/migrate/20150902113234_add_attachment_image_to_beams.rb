class AddAttachmentImageToBeams < ActiveRecord::Migration
  def self.up
    change_table :beams do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :beams, :image
  end
end
