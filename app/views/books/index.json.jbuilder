json.array!(@books) do |book|
  json.extract! book, :id, :author, :title, :pages, :publisher, :pub_year, :isbn, :genre, :category, :category_id, :avg_rating
  json.url book_url(book, format: :json)
end
