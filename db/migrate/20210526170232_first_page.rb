class FirstPage < ActiveRecord::Migration[6.0]
  def change
    create_table :firstpages do |t|
      t.string :distribuidor
      t.string :responsavel
      t.datetime :data
      t.integer :user_id

      t.timestamps
  end
  add_index :firstpages, :user_id
end
end
