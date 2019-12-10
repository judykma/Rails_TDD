require 'rails_helper'
feature "User creates an account" do
    before(:each) do 
        visit new_user_path
    end
    scenario "1 successfully creates a new user account" do
        fill_in "user_first_name", with: "judy"
        fill_in "user_last_name", with: "ma"
        fill_in "user_email", with: "jma@codingdojo.com"
        click_button "Create User"
        expect(page).to have_content "Hello, judy"
        # We'll be redirecting to the user show page is user succesfully created
        expect(page).to have_current_path(user_path(id: 1))    
    end
    scenario "2 unsuccessfully creates a new user account" do 
        click_button "Create User"
        expect(current_path).to eq(new_user_path)
    end
    scenario "3 doesn't fill out first name field" do 
        fill_in "user_first_name", with: ""
        fill_in "user_last_name", with: "ma"
        fill_in "user_email", with: "jma@codingdojo.com"
        click_button "Create User"
        expect(page).to have_content "First name can't be blank"
    end
    scenario "4 doesn't fill out last name field" do 
        fill_in "user_first_name", with: "judy"
        # fill_in "user_last_name", with: "ma"
        fill_in "user_email", with: "jma@codingdojo.com"
        click_button "Create User"
        expect(page).to have_content "Last name can't be blank"        
    end
    scenario "5 doesn't fill out email field" do 
        fill_in "user_first_name", with: "judy"
        fill_in "user_last_name", with: "ma"
        # fill_in "user_email", with: "jma@codingdojo.com"
        click_button "Create User"
        expect(page).to have_content "Email can't be blank"        
    end
end