class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :code, limit: 6
      t.user :references

      t.timestamps
    end
    add_index :events, :code, unique: true
  end
end
