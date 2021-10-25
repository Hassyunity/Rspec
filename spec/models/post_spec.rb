require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'comment association' do 
    it 'increment comment_count' do 
      post = build(:post)
      post.comments << build(:comment)
      post.save 
      # expect(Comment.count).to eq(1)
      # expect(post.comments_count).to eq(1)
    end 
  end
  it 'persiste post' do 
    create(:post)
    # expect(Post.count).to eq(0)
  end

end
