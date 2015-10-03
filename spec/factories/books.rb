FactoryGirl.define do
  factory :expected_book, class: Book do |f|
    f.isbn "4047306525"
    f.title "Kancolle"
    f.author "tsukiji"
    f.publisher "famitsu"
  end

end
