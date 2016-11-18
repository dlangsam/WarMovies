class AddMovieIdToImages < ActiveRecord::Migration[5.0]
  def change
  	add_column :images, :movie_id, :integer
  end
end
