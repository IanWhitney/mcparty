class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.integer :reason_id
      t.text :name
      t.timestamps
    end
  end
end
