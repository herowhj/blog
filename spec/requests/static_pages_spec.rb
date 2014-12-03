require 'rails_helper'

#RSpec.describe "StaticPages", :type => :request do
  describe "Static pages" do
    let(:base_title) {"My Blog"}
    describe "Home page" do
      it "should hava the content 'Blog'" do
      visit '/static_pages/home'
      expect(page).to have_content('Blog')
    end
    it "should have the right title on my home page" do
      visit 'static_pages/home'
      expect(page).to have_title("#{base_title}")
    end 
  end
  describe "Help page" do
    it "should hava the content 'help'" do
    visit '/static_pages/help'
      expect(page).to have_content('help')
    end
    it "should have the right title on my help page" do
      visit 'static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end  
  describe "About page" do
    it "should hava the content 'help'" do
    visit '/static_pages/about'
    expect(page).to have_content('about')
    end
    it "should have the right title on my about page" do
      visit 'static_pages/about'
      expect(page).to have_title("#{base_title} | About Us")
    end
  end
  
 
    describe "Contact page" do
      it "should hava the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact Me')
    end
    it "should have the right title on my contact page" do
      visit 'static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end 
    end

  
  
  

end
