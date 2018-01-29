class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.text :bio
      t.string :avatar
      t.text :academics
      t.text :awards
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
