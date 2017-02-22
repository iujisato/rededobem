class AddUserInformations < ActiveRecord::Migration[5.0]
  def change
    create_table :user_informations do |t|
      t.string :name, null: false
      t.string :date_of_birth
      t.jsonb :telephone
      t.jsonb :education_level
      t.jsonb :status
      t.timestamps
    end

    add_index :user_informations, :status, using: :gin
    add_index :user_informations, :education_level, using: :gin
  end
end
