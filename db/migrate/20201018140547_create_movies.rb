class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.string :release_year
      t.string :director
      t.string :actors
      t.string :cover

      t.timestamps
    end
  end
end
