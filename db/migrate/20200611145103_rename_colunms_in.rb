class RenameColunmsIn < ActiveRecord::Migration[5.2]
  def change
    rename_column :plays, :artitst_id, :artist_id
  end
end
