class RenameMagazineColumnToComics < ActiveRecord::Migration[6.0]
  def change
    rename_column :comics, :magazine, :magazine_id
  end
end
