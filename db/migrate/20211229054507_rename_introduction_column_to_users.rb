class RenameIntroductionColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :introduction, :body
  end
end
