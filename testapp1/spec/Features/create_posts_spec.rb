require 'rails_helper.rb'

feature 'Creating Posts' do
    scenario 'can create job' do
        #visit root rout
        visit '/' 
        #create a post link
        click link 'Creat Post'
        #fill the form with needed information (title and caption)  
        Fill_in 'Title', with: 'title'
        Fill_in 'Caption', with: 'caption'
        #click submit botton
        click_boton 'Create Post'
        #expect the page to have content we submit
        expect(page).to have_content('title')
        expect(page).to have_content('caption')
    end
end