class AddAddressColumnsToRestoran < ActiveRecord::Migration
  def change
    change_table :restorans do |t|
      t.string :address
      t.string :phone_number
      t.text :time_of_work
    end
  end
end
