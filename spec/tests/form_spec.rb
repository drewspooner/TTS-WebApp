require 'rails_helper'

RSpec.describe "Using the forms", type: :system do
    #Story: I would like to add a new book
    #ACCEPTANCE-- Form successfully adds a new book to the database
    context "adds a new book" do
        it "fills out new book forms" do
            visit '/books/new'

                fill_in 'Title', with: 'Bible 2, Cooler Bible'
                fill_in 'Author', with: 'Mr. God'

            click_button('Create book') 
            expect(page).to have_content 'Bible 2, Cooler Bible'
        end
    end
    #I am having some path issues and I cannot run these tests
end