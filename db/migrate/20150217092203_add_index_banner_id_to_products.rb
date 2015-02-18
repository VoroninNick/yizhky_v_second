class AddIndexBannerIdToProducts < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.belongs_to :index_banner
    end
  end
end
