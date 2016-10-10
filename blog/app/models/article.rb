class Article < ApplicationRecord
	validates :category, presence: true, length: 1..20
  validates :author, presence: true, length: 1..100
  validates :title, presence: true, length: 3..100
  validates :content, presence: true
end
