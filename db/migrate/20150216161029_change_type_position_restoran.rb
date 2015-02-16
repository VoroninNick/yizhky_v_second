class ChangeTypePositionRestoran < ActiveRecord::Migration
  def change
    change_column :restorans, :position, :integer
  end
end
