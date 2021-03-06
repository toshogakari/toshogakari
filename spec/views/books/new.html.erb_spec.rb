require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      :isbn => "MyString",
      :title => "MyString",
      :author => "MyString",
      :publisher => "MyString"
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input#book_isbn[name=?]", "book[isbn]"

      assert_select "input#book_title[name=?]", "book[title]"

      assert_select "input#book_author[name=?]", "book[author]"

      assert_select "input#book_publisher[name=?]", "book[publisher]"
    end
  end
end
