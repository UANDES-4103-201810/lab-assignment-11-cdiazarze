FactoryBot.define do
  factory :user do
    username "user1"
    email "user1@email.com"
    password "pass"
  end
  factory :message do
    user_id 1
    date Date.today
    content "This is a message"
  end
end