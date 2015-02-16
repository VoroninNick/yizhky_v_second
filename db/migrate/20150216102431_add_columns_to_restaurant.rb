class AddColumnsToRestaurant < ActiveRecord::Migration
  def change
    change_table :restorans do |t|
      t.text :short_description
      t.text :description
      t.text :about
      t.boolean :position
      t.has_attached_file :logo
      t.has_attached_file :main_image

    end
  end
end
