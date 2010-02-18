class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.date :event_date
      t.time :event_time
      t.string :name
      t.string :location
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
