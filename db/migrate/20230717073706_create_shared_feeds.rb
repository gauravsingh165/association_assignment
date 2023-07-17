class CreateSharedFeeds < ActiveRecord::Migration[7.0]
  def change
    create_table :shared_feeds do |t|
      t.references :sender, null: false, foreign_key: true
      t.references :reciver, null: false, foreign_key: true
      t.references :feed, null: false, foreign_key: true

      t.timestamps
    end
  end
end
