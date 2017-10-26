class AddAttachmentTitleImgToTours < ActiveRecord::Migration[5.1]
  def self.up
    change_table :tours do |t|
      t.attachment :title_img
    end
  end

  def self.down
    remove_attachment :tours, :title_img
  end
end
