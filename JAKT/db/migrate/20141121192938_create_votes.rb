class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :song_id, :user_id
      t.integer :vote_type
      t.timestamps
    end
  end
end
