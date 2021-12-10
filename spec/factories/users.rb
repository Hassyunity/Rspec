FactoryBot.define do
  factory :user do
    sequence(:email) {|n| "hello+#{n}@hassy.dev" }
    password { SecureRandom.hex}

    factory :subscribe_user do 
      subscription_status {'active'}
    end
  end
end
