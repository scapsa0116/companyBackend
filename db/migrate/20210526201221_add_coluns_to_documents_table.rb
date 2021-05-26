class AddColunsToDocumentsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :documents, :distribuidor, :string
    add_column :documents, :responsavel, :string 
    add_column :documents,  :data, :datetime 
      
      
  end
end
