class AddAttachmentPinToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :pin
    end
  end

  def self.down
    remove_attachment :users, :pin
  end
end
