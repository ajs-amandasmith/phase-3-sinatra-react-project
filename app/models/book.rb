class Book < ActiveRecord::Base
  belongs_to :author

  def delete_author_if
    if self.author.books.count == 0
      self.author.delete
    end
  end
end