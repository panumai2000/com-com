class RenameGenreColumnToComics < ActiveRecord::Migration[6.0]
  def change
    rename_column :comics, :genre, :genre_id
  end
end
