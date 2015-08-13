FactoryGirl.define do
  factory :expected_user, class: User do |f|
    f.nickname "foo"
    f.email "foo@email.com"
    f.password "password"
    f.password_confirmation "password"
  end

end
