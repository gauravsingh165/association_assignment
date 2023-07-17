class CreateGroupFeedApprovals < ActiveRecord::Migration[7.0]
  def change
    create_table :group_feed_approvals do |t|
      t.references :group, null: false, foreign_key: true
      t.references :feed, null: false, foreign_key: true
      t.boolean :approved

      t.timestamps
    end
  end
end
