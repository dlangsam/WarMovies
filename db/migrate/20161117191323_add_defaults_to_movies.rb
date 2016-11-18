class AddDefaultsToMovies < ActiveRecord::Migration[5.0]
  def change
  	change_column :movies, :tagline, :string, default: ""
  end
end
