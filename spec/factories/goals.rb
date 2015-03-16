FactoryGirl.define do
  factory :goal do
    body "MyString"
    user build(:user)
    completed false
    is_private false
  end
end
