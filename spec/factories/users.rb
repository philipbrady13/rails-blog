FactoryBot.define do
  factory :user do
    name 'joe shmoe'
    sequence(:email) { |n| "test.#{n}@mediazilla.com" }
    password 'mediazilla'
    password_confirmation 'mediazilla'
  end
end
