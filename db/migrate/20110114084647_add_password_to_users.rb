class AddPasswordToUsers < ActiveRecord::Migration
  def self.up
    add_column :persons, :password_hash, :string
    add_column :persons, :salt, :string
  end

  def self.down
    remove_column :persons, :salt
    remove_column :persons, :password_hash
  end
end
