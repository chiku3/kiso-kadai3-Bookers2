class Rename < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :titile, :title
  end
end
