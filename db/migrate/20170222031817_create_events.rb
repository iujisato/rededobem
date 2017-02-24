class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.datetime :start_at
      t.integer :ẗype, null: false
      t.boolean :mandatory, null: false, default: false
      t.text :description
      t.timestamps
    end
  end
end
