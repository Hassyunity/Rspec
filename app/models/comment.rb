class Comment < ApplicationRecord
  belongs_to :post, counter_cache: true
  validates :content, presence: true, length: {minimum: 10}
  
end