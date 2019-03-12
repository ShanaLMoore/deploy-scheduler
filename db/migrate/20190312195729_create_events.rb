class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :text
      t.string :rec_type
      t.integer :event_length
      t.string :event_p

      t.timestamps
    end
  end
end
