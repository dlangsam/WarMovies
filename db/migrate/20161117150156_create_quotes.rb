class CreateQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :quotes do |t|
      t.text :saying
      t.string :author
      t.timestamps
    end
  end
end
