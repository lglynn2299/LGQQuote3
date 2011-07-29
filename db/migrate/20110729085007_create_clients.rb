class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :ClientName
      t.float :HourlyCost
      t.string :SLA

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
