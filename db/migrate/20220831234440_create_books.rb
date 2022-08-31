class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :publisher
      t.string :genre
      t.integer :author_id
    end
  end
end
