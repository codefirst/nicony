class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :tasks
      t.integer :user_id
      t.text :memo

      t.timestamps
    end
  end
end
