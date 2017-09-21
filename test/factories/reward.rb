FactoryGirl.define do
  factory :reward do
    description "In composition, description is a rhetorical strategy"
    dollar_amount 50.50
    project

    trait :reward_2 do
      description "In composition, description is a rhetorical strategy"
      dollar_amount 100.25
      project
    end
  end
end
