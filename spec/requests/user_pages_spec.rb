require 'spec_helper'

describe "User pages" do
  
  subject { page }
  
  subject { page }

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }
    
    it { should have_selector('h1',    text: user.name) }
    it { should have_selector('title', text: user.name) }
  end

  describe "signup page" do
    before { visit signup_path }
    
    describe "with invalid credentials" do
      it "should not create a user" do
        expect { click_button "Create my account" }.not_to change(User, :count)
      end
    end
    
    describe "with valid credentials" do 
      before do
        fill_in "Name",               with: "Example User"
        fill_in "Email",              with: "user@example.com"
        fill_in "Password",           with: "foobar"
        fill_in "Confirmation",       with: "foobar"
      end
      
      describe "after saving the user" do
              before { click_button "Create my account" }
              let(:user) { User.find_by_email('user@example.com') }

              it { should have_selector('title', text: user.name) }
              it { should have_selector('div.alert.alert-success', text: 'Welcome') }
              it { should have_link('Log out') }
            end
      
      it "should create a user" do
        expect do
          click_button "Create my account"
        end.to change(User, :count).by(1)
      end
    end
  end
end
