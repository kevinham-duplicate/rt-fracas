class AddIdUniquenessIndex < ActiveRecord::Migration
  def self.up
    add_index :users, :emp_id, :unique => true
  end

  def self.down
    remove_index :users, :emp_id
  end
end
