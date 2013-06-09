class DeviseCreateUsers < ActiveRecord::Migration
  def self.up
    create_table(:users) do |t|
      t.string :name, :null => false
      t.string :nickname, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
