require 'rails_helper'

RSpec.describe 'Pages checker', type: :feature do
    before(:all) do
        @book = Book.create( :title=>"Bible", :author=>"HP",
            :genre=>"Test", :price=>"123")
    end

    #Story: As a user, my homepage should display any current books & display a title showing what I am seeing.
    #ACCEPTANCE--Must show headers, and any books currently in the database
    describe 'index page' do
        it 'shows the right content' do
            visit books_path
            expect(page).to have_content('Book Database')
            expect(page).to have_content(@book.title)
        end
    end

    #Story: As a user, I want to be able to confirm whether or not I am really sure I want to delete a book.
    #ACCEPTANCE-- A pop up page must show before deletion action occurs
    describe 'delete pop up page' do
        it 'shows the pop up before delete' do
            visit ('/books/'+@book.id.to_s+'/delete')
            expect(page).to have_content('Confirm')
            expect(page).to have_content('CANCEL')
        end
    end

    #Story: As a user, I want to be able to edit my listings of books.
    #ACCEPTANCE--Edit page reveals, has all categories
    describe 'Edit page' do
        it 'shows the edit page with all necessary info' do
            visit ('/books/'+@book.id.to_s+'/edit')
            expect(page).to have_content("Title")
            expect(page).to have_content("Author")
            expect(page).to have_content("Price")
            expect(page).to have_content("Genre")
        end
    end
end
