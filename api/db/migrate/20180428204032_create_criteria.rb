class CreateCriteria < ActiveRecord::Migration[5.2]
  def change
    create_table :criteria do |t|
      t.string :name
      t.string :icon
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
