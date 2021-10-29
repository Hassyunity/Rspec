FactoryBot.define do
  factory :widget do
    # widget regulier
    name { 'Contact direct' }

    # widget regulieraleatoire 
    factory :widget_random do 
      sequence(:name) { |i| "Widget #{i}" }
    end 


    # name { "MyString" }
  end
end
