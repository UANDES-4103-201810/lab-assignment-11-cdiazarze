FactoryBot.define do
  factory :User do
    username "user1"
    email "user1@email.com"
    password "pass"
  end
  factory :Message do
    user_id 1
    date Date.today
    content "This is a message"
  end
end