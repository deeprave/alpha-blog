class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 6, maximum: 120 }
  validates :description, presence: true, length: { minimum: 10, maximum: 4096 }
end
