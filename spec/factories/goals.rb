FactoryGirl.define do
  factory :goal do
    body "Eat more vegetables"
    user_id 0
    completed false
    is_private false
  end
end
