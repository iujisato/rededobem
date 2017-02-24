class AddUserDataIdToUserAddresses < ActiveRecord::Migration[5.0]
  def change
    add_reference :user_addresses, :user_data, foreign_key: true
  end
end
