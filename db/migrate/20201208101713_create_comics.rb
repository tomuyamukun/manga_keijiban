class CreateComics < ActiveRecord::Migration[6.0]
  def change
    create_table :comics do |t|
      t.string :title,   null: false
      t.text :summary,   null: false
      t.text :link,      null:false
      t.references :user,   foreign_key: true,  null: false
      t.timestamps
    end
  end
end
