class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.float :goal
      t.text :description
      t.text :notes

      t.timestamps
    end
  end
end
