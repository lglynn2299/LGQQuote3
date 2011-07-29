class CreateQuickQuotes < ActiveRecord::Migration
  def self.up
    create_table :quick_quotes do |t|
      t.string :Title
      t.string :CreatedBy
      t.float :Hours
      t.float :Cost
      t.string :Client
      t.text :Requirements
      t.string :Status

      t.timestamps
    end
  end

  def self.down
    drop_table :quick_quotes
  end
end
