class CreateReminders < ActiveRecord::Migration[5.2]
  def change
    create_table :reminders do |t|
      t.string :title
      t.text :body
      t.datetime :timings
      t.boolean :private
      t.text :location
      t.integer :user_id

      t.timestamps
    end
  end
end
