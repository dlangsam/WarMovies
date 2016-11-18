class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.integer :url
      t.boolean :main, default: false 
      t.timestamps
    end
  end
end
