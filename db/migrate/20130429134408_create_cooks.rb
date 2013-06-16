class CreateCooks < ActiveRecord::Migration
  def change
    create_table :cooks do |t|
      t.references :host, index: true
      t.references :recipe, index: true
      t.references :user, index: true
      t.boolean :success
      t.text :log
      t.text :memo

      t.timestamps
    end
  end
end
