FactoryGirl.define do

  # This will use the User class (Regular would have been guessed)
  factory :regular, class: User do
    email "regular@serler.com"
    password  "password"
  end
  
  factory :admin, class: User do
    email "admin@serler.com"
    password  "password"
  end
  
end