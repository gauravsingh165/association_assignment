class CreateIndividualMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :individual_messages do |t|
      t.references :individual_conversation, null: false, foreign_key: true
      t.references :sender, null: false, foreign_key: true
      t.references :reciver, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
