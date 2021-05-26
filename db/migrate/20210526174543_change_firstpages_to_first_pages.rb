class ChangeFirstpagesToFirstPages < ActiveRecord::Migration[6.0]
  def change
    rename_table :firstpages, :first_pages
  
  end
end
