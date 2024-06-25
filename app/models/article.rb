class Article < ApplicationRecord
  validates :title, presence: true, length: { maximum: 40 }
  validates_presence_of :content, :author, :category, :published_at
end
