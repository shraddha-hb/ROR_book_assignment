class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :name
      t.text :short_description
      t.text :long_description
      t.string :books_chapter_index
      t.date :published_date
      t.string :genre
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
