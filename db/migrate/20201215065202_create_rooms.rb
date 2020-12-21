class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.references :user, foreign_key: true
      t.references :comic, foreign_key: true
      t.string :name 
      t.text :text, null: false

      t.timestamps
    end
  end
end
