class CreateIndexBanners < ActiveRecord::Migration
  def change
    create_table :index_banners do |t|
      t.string :name
      t.integer :position
      t.boolean :published

      t.timestamps
    end
  end
end
