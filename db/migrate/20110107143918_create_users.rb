class CreateUsers < ActiveRecord::Migration
  def self.up
    add_column :persons, :contact_email, :string
  end

  def self.down
    fail
  end
end
