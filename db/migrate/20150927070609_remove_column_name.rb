class RemoveColumnName < ActiveRecord::Migration
  def change
     remove_column :images, :gallery_id
  end
end
