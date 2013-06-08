FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "User #{n}" }
    sequence(:email) { |n| "user#{n}@this.app.mail.net" }
    password "aaaaaa"
    password_confirmation "aaaaaa"
  end
end
