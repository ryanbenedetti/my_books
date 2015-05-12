class Book < ActiveRecord::Base

validates :author, :title, :pages, :publisher, :pub_year, :isbn, presence: true
validates :pub_year, length: {minimum: 4}
validates :pages, numericality: { greater_than_or_equal_to: 0 }

CATEGORIES = ["Hardcover", "Paperback", "Mass Market Paperback", "Trade Paperback", "eBook",  "Audible Audiobook", "Audio CD"]
CATEGORY_IDS = [1, 2, 3, 4, 5, 6, 7]

validates :category, inclusion: { in: CATEGORIES }
validates :category_id, inclusion: { in: CATEGORY_IDS}

end
