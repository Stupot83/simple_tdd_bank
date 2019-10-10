require "library"

describe "Library" do
  before :each do
    @library = Library.new
  end

  it "Creates a new instance of the library class" do
    expect(@library).to be_a(Library)
  end

  it "can find a specific book" do
    actual = @library.find_book("POODR")

    expected = { :author => "Sandi Metz", :subject => "OOP", :title => "POODR" }

    expect(actual).to eq(expected)
  end

  it "can add a new book" do
    actual = @library.add_book(:author => "Dave", :subject => "Daves", :title => "Dave is Awesome")

    expected = { :author => "Dave", :subject => "Daves", :title => "Dave is Awesome" }

    expect(actual).to include(expected)
  end

  it "can remove a book" do
    actual = @library.remove_book(:author => "Dave", :subject => "Daves", :title => "Dave is Awesome")

    expected = { :author => "Dave", :subject => "Daves", :title => "Dave is Awesome" }

    expect(actual).not_to include(expected)
  end

  it "can list all the books on a specific subject" do
    actual = @library.all_books_by_subject("OOP")

    expected = [{ :author => "Sandi Metz", :subject => "OOP", :title => "POODR" }]

    expect(actual).to eq(expected)
  end
end
