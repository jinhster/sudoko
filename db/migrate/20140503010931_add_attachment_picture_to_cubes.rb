class AddAttachmentPictureToCubes < ActiveRecord::Migration
  def self.up
    change_table :cubes do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :cubes, :picture
  end
end
