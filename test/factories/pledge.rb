FactoryGirl.define do
  factory :pledge do
    dollar_amount 20
    user
    project


    trait :pledge_2 do
      dollar_amount 5
      user
      project

    end
  end
end
