class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :gallery_id
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
