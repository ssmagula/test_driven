require 'spec_helper'

describe "Static pages" do
  
  describe "Home page" do
    before { visit root_path }
    it "should have the content 'fun'" do
      page.should have_selector('h1', :text => 'fun')
    end

      it "should have the right html title on Home page" do
        page.should have_selector('title', :text => "Carousels are fun")
      end
      
      it "should not have a custom page title" do
        page.should_not have_selector('title', :text => '| Home')
      end
    end
  
  describe "Help page" do
    before { visit help_path }
    it "should have the content 'Help'" do
      page.should have_selector('h1', :text => 'Help')
    end
    
    it "should have the right html title on Help page" do
      page.should have_selector('title', :text => "Help")
    end
  end
  
  describe "About page" do
    before { visit about_path }
    it "should have the content 'About us'" do
      page.should have_selector('h1', :text => 'About us')
    end
  
    it "should have the right html title on About page" do
      page.should have_selector('title', :text => "About")
    end
  end
  
  describe "Contact page" do
    before { visit contact_path }
    it "should have the content 'Contact us'" do
      page.should have_selector('h1', :text => 'Contact us')
    end
  
    it "should have the right html title on About page" do
      page.should have_selector('title', :text => "Contact")
    end
  end
  
end
