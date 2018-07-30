class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.text :title
      t.text :movie_poster
      t.text :description
      t.text :rating
      t.text :showtime

      t.timestamps
    end
  end
end
