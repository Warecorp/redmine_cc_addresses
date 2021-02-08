class AddDoNotSendCcToJournals < ActiveRecord::Migration[5.2]
  def self.up
    add_column :journals, :do_not_send_cc, :boolean, :null => false, :default => false
  end

  def self.down
    remove_column :journals, :do_not_send_cc
  end
end
