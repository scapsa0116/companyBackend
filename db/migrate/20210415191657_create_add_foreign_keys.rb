class CreateAddForeignKeys < ActiveRecord::Migration[6.0]
  def change
    create_table :add_foreign_keys do |t|
      add_foreign_key :documents, :users
      t.timestamps
    end
  end
end
