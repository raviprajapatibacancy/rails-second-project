class Subjects < ActiveRecord::Migration[7.0]
  def self.up
     
     create_table :subjects do |t|
        t.column :name, :string
     end
  end

  def self.down
     drop_table :subjects
  end
end