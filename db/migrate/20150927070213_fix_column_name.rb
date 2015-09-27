class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :albums, :gallery_id, :images_id
  end
end
