require 'rails_helper'

RSpec.describe Book, type: :model do
  before(:all) do
    @book = Book.new(:title=>"Bible", :author=>"HP")
  end

  #Story: As a user, I would like to be able to create a book
  #ACCEPTANCE--Must be created, a valid entry, and found in database
  it "can be created" do
    expect(@book).to be_valid
  end

  #Story: As a user, I would like to be able to edit my books
  #ACCEPTANCE--Must be edited and reflected with these new changes
  it 'can be updated' do
    @book.update(:title => "Bible 2")
    expect(@book.title).to eq("Bible 2")
  end

  #Story: As a user, I would like to be able to remove books
  #ACCEPTANCE--Must be a valid destroyed entity and no longer exist in the database
  it 'can be destroyed' do
    @book.destroy
    expect(@book.destroyed?).to be true
  end

  #Story: As a user, all my books must have a title at the minimum
  #ACCEPTANCE--Must not be able to enter a book w/o a title
  it "has a title" do
    @book2 = Book.new(title: nil)
    expect(@book2).to_not be_valid
  end
  
    
end