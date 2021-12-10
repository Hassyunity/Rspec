require "string_calculator"

describe StringCalculator do
    describe ".add" do 
        context "two numbers" do
            context "given 6 string" do 
                it "returns 6" do 
                    expect(StringCalculator.add("2,4")).to eq(6)
                end
            end

            context "given 11" do 
                it "return 11" do 
                    expect(StringCalculator.add("6,5")).to eq(11)
                end
            end
        end
    end
end