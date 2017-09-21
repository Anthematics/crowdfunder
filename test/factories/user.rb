FactoryGirl.define do
  factory :user do
    first_name "Jim"
    last_name "Pat"
    email "Jim@gmail.com"
    admin false
    password "password"
    password_confirmation "password"


    trait :Hank do
      first_name "Hank"
      last_name "Dig"
      email "Hank@gmail.com"
      admin true
      password "password1"
      password_confirmation "password1"
    end
  end
end
