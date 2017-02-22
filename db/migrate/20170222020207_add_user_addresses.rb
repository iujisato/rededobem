class AddUserAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :user_addresses do |t|
      t.string :street
      t.string :neighbourhood
      t.string :city
    end
  end
end
