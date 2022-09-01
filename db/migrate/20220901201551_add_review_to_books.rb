class AddReviewToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :review, :string
  end
end
