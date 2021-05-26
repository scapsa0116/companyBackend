class CreateTables < ActiveRecord::Migration[6.0]
  def change
    create_table :tables do |t|
      t.string :visao
      t.string :missao
      t.integer :user_id

      t.timestamps
    end
  end
end
