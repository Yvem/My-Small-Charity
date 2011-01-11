class CreatePersons < ActiveRecord::Migration
  def self.up
    create_table :persons do |t|
      t.string :designation

      t.timestamps
    end

    # STI
    add_column :persons, :type, :string
  end

  def self.down
    drop_table :persons
  end
end
