class CreateReasons < ActiveRecord::Migration
  def change
    create_table :reasons do |t|
      t.text :name

      t.timestamps
    end
  end
end
