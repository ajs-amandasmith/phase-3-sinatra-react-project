class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/books" do
    { message: "Good luck with your project!" }.to_json
    books = Book.all
    books.to_json(include: :author)
  end

  get "/books/:id" do
    book = Book.find(params[:id])
    book.to_json
  end

  get "/authors" do
    authors = Author.all
    authors.to_json
  end

  get "/authors/:id" do
    author = Author.find(params[:id])
    author.to_json
  end

  post "/authors" do
    author = Author.create(
      name: params[:name]
    )
    author.to_json
  end

  post "/books" do
    book = Book.create(
      title: params[:title],
      publisher: params[:publisher],
      genre: params[:genre],
      author_id: params[:author_id]
    )
    book.to_json
  end

  patch "/books/:id" do
    book = Book.find(params[:id])
    book.update(
      title: params[:title],
      publisher: params[:publisher],
      genre: params[:genre],
      author_id: params[:author_id]
    )
    book.to_json
  end

end
