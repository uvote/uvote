class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.references :contestant, foreign_key: true
      t.references :criterium, foreign_key: true
      t.integer :vote_type
      t.string :voter_id

      t.timestamps
    end
  end
end
