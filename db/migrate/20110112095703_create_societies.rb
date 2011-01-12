class CreateSocieties < ActiveRecord::Migration
  def self.up
    add_column :persons, :owner_id, :integer
  end

  def self.down
    remove_column :persons, :owner_id
  end
  
end
