require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :isbn => "Isbn",
      :title => "Title",
      :author => "Author",
      :publisher => "Publisher"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Isbn/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Publisher/)
  end
end
