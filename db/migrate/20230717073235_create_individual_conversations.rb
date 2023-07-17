class CreateIndividualConversations < ActiveRecord::Migration[7.0]
  def change
    create_table :individual_conversations do |t|

      t.timestamps
    end
  end
end
