require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'validation' do
    it 'validation de contenue' do 
      comment = build(:Comment_empty)
      comment.validate
      expect(comment.errors.messages).to include(:content)
      expect(comment.valid?).to be false
    end
    it 'good content' do 
      comment = build(:comment, post: create(:post))
      comment.validate 
      expect(comment.valid?).to be true 
      expect(subject).to_not be_valid
      # expect(widget.errors[:name]).to include('is too short (minimum is 10 characters)')
    end
  end 
  
end
