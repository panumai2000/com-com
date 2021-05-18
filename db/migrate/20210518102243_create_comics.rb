class CreateComics < ActiveRecord::Migration[6.0]
  def change
    create_table :comics do |t|
      t.string  :name,      null: false
      t.integer :genre,     null: false
      t.integer :magazine,  null: false
      t.string  :author,    null: false
      t.integer :number,    null: false
      t.string  :end,       null: false
      t.references :user,   null: false, foreign_key: true

      t.timestamps
    end
  end
end
