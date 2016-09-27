require 'rails_helper.rb'

feature "Visiting the homepage" do
    scenario "index page shows welcome text" do
        visit root_path
        expect(page).to have_text("Welcome to Posts")
    end
end