FactoryGirl.define do
  factory :comment do
    commentable_type "MyString"
commentable_id 1
body "MyString"
author_id 1
  end

end
