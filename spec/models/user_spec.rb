require 'rails_helper'

RSpec.describe User, type: :model do
  
  context '#import' do 
    it 'return name' do 
      user = User.new 
      expect(user.import).to eq('Leanne Graham')
    end
  end

  # pending "add some examples to (or delete) #{__FILE__}"
end
