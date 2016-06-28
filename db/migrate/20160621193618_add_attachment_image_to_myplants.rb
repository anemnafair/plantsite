class AddAttachmentImageToMyplants < ActiveRecord::Migration
  def self.up
    change_table :myplants do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :myplants, :image
  end
end
