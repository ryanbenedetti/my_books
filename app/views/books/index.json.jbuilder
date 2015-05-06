json.array!(@books) do |book|
  json.extract! book, :id, :author, :title, :pages, :publisher, :pub_date, :isbn, :genre, :category
  json.url book_url(book, format: :json)
end
