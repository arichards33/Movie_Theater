class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.text :name
      t.text :email
      t.text :cc
      t.text :exp
      t.datetime :date
      t.integer :showtime_id
      t.integer :tickets
      t.integer :cost

      t.timestamps
    end
  end
end
