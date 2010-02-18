class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :position
      t.string :year
      t.string :major
      t.boolean :e_board
      t.text :bio

      t.timestamps
    end
  end

  def self.down
    drop_table :members
  end
end
