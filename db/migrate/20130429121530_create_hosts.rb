class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :name
      t.string :ip
      t.string :user_name
      t.string :password
      t.text :description

      t.timestamps
    end
  end
end
