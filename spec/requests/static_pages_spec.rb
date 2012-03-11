require 'spec_helper'

describe "Static pages" do
  
  describe "Home page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'fun')
    end

      it "should have the right html title on Home page" do
        # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
        visit '/static_pages/home'
        page.should have_selector('title', :text => "Carousels are fun")
      end
      
      it "should not have a custom page title" do
        visit '/static_pages/home'
        page.should_not have_selector('title', :text => '| Home')
      end
    end
  
  describe "Help page" do
    it "should have the content 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    
    it "should have the right html title on Help page" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Help")
    end
  end
  
  describe "About page" do
    it "should have the content 'About us'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About us')
    end
  
    it "should have the right html title on About page" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/about'
      page.should have_selector('title', :text => "About")
    end
  end
  
  describe "Contact page" do
    it "should have the content 'Contact us'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end
  
    it "should have the right html title on About page" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "Contact")
    end
  end
  
end
