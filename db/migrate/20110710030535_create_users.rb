class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users, :id => false do |t|
      t.integer :emp_id
      t.string :name
      t.integer :dept_id
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
