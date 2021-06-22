FactoryBot.define do
  factory :user do
    email                 {"test@gmail.com"}
    name                  {"test"}
    nickname              {"テスト"}
    password              {"111111"}
    password_confirmation {"111111"}
  end
end