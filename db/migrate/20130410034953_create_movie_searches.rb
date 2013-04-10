class CreateMovieSearches < ActiveRecord::Migration
  def change
    create_table :movie_searches do |t|

      t.timestamps
    end
  end
end
