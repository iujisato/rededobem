class CreateUserData < ActiveRecord::Migration[5.0]
  def change
    create_table :user_data do |t|
      t.string :name, null: false
      t.date :date_of_birth
      t.jsonb :telephone
      t.jsonb :education_level
      t.jsonb :status
      t.timestamps
    end

    add_index :user_data, :status, using: :gin
    add_index :user_data, :education_level, using: :gin
  end
end
