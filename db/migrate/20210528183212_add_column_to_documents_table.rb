class AddColumnToDocumentsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :documents, :visao, :string
    add_column :documents, :missao, :string 
  end
end


      
