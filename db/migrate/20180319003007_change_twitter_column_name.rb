class ChangeTwitterColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :profiles, :twitter, :twitter_username
  end
end
