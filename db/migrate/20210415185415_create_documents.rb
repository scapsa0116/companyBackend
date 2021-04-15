class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.string :customer_code
      t.string :company_name
      t.string :cnpj
      t.string :address
      t.string :email
      t.integer :user_id

      t.timestamps
    end
  end
end
