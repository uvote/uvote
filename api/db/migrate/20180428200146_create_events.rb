class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :code, limit: 6
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :events, :code, unique: true
  end
end
