class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :name, null: false
      t.integer :year, null: false
      t.string :tagline
      t.integer :size
      t.integer :accuracy
      t.boolean :classic
      t.timestamps
      t.timestamps
    end
  end
end
