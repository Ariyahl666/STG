class AddUsernameToUsers < ActiveRecord::Migration
  def change # anything inside of this method, is translated to SQL code and modified the database (currently, SQLite) 
  add_column :users, :username, :string # add new column to table "users", called "username" and of type "string" 
  add_index :users, :username, unique: true # first, index username for quick (rapid) lookup. Second ensure usernames are ALWAYS unique.   
  end
end
