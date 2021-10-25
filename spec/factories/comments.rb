FactoryBot.define do
  factory :comment do
    content { "Upgrading your codebase should involve only a few steps, and in most cases, it involves updating the Gemfile, factories file(s), and support file configuring the testing framework." }
    
     factory :Comment_empty do
        content { "" }
      end
  end
end
