class CreateRecivers < ActiveRecord::Migration[7.0]
  def change
    create_table :recivers do |t|
      t.string :name

      t.timestamps
    end
  end
end
