class AddUserDataIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :user_data, foreign_key: true
  end
end
