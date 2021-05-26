class ChangeFirstPagesToPage < ActiveRecord::Migration[6.0]
  def change
     rename_table :first_pages, :pages
  end
end
