class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.integer :gallery_id
      t.string :pics

      t.timestamps null: false
    end
  end
end
