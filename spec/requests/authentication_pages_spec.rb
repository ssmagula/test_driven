require 'spec_helper'

  describe "Authentication" do
    subject { page }
    describe "sign in page" do
      before { visit signin_path }
      
            it { should have_selector('title', text: 'Log in') }
            it { should have_selector('h1', text: 'Sign in') }
            
      describe "with valid username and password" do
        let(:user) { FactoryGirl.create(:user) }
        before do
          fill_in "Email", with: user.email
          fill_in "Password", with: user.password
          click_button "Sign in"
        end
        
        it { should have_selector('title', text: user.name) }
        it { should have_link('Profile', href: user_path(user)) }
        it { should have_link('Log out', href: signout_path) }
        it { should_not have_link('Sign in', href: signin_path) }
        
        describe "followed by logging out" do
          before { click_link "Log out"}
          it { should have_link('Sign in')}
        end
      end
        
      describe "Failed authentication" do
        before { click_button "Sign in" }
        it { should have_selector('div.alert.alert-error', text: 'The email and password combination was not valid') }
        
        describe "after visiting another page" do
                before { click_link "Home" }
                it { should_not have_selector('div.alert.alert-error') }
          end
     end
   end
  end
