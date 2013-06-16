class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :tasks
      t.references :user, index: true
      t.text :memo

      t.timestamps
    end
  end
end
