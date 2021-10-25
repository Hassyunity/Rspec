class Post < ApplicationRecord
    has_many :comments
#     validates_presence_of :post
#   validates_presence_of :comment
    # validates_presence_of :post, :comment
end
