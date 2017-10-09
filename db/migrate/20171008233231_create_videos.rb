class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :name
      t.string :genre
      t.datetime :release_date
      t.string :classification
      t.text :description

      t.timestamps
    end
  end
end
