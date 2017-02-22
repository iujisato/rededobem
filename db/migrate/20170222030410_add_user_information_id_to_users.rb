class AddUserInformationIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :user_information, foreign_key: true
  end
end
