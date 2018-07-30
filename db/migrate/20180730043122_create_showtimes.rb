class CreateShowtimes < ActiveRecord::Migration[5.1]
  def change
    create_table :showtimes do |t|
      t.text :start_time
      t.integer :movie_id
      t.integer :seats

      t.timestamps
    end
  end
end
