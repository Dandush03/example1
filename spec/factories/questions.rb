FactoryBot.define do
  factory :question do
    title { FFaker::Name.name }
    
    trait :priv do
      private { true }
    end
  end
end
