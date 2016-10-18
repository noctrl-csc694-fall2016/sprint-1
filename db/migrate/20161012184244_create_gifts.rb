class CreateGifts < ActiveRecord::Migration[5.0]
  def change
    create_table :gifts do |t|
      t.references :donor, foreign_key: true
      t.references :activity, foreign_key: true
      t.date :donation_date
      t.float :amount
      t.string :gift_type
      t.text :notes

      t.timestamps
    end
  end
end
