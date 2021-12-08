require 'spec_helper'  
 
RSpec.describe Order do 
    subject { Order.new({ state: :created }) } 
  
    describe "#checkout" do  
        it "does stuff" do  
            subject.checkout 
 
            expect(subject.checkout).to eql(:completed) 
        end  
    end 
end 