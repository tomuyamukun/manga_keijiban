class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :nickname
      t.text :text, null: false
      t.references :comic, foreign_key: true
      t.references :room, foreign_key: true
      t.timestamps
    end
  end
end
