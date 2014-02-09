class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :topic
      t.integer :posx
      t.integer :posy
      t.boolean :seen, default: false

      t.timestamps
    end

    add_index :users, :created_at
  end
end
