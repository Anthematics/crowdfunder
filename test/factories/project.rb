FactoryGirl.define do
  factory :project do
    title "twix force"
    description "take your twix with force"
    start_date Date.today
    end_date Date.today + 1.month
    goal 10000
    user


    trait :project_2 do
      title "project 2"
      description "great project buy it"
      start_date Date.today
      end_date Date.today + 2.month
      goal 5000
      user

    end
  end
end
