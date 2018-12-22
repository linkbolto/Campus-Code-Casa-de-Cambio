class RemoveAddressesFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :addresses, foreign_key: true
  end
end
