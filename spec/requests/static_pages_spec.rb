require 'rails_helper'

#RSpec.describe "StaticPages", :type => :request do
  describe "Static pages" do
    #subject{ page }
    let(:base_title) {"校友微博"}
    describe "Home page" do
      it "should hava the content '欢迎'" do
      visit root_path
        expect(page).to have_content('欢迎')
      end
      it "should have the right title on my home page" do
        visit root_path
        expect(page).to have_title("#{base_title} | Home")
      end
    end  
  describe "Help page" do
    it "should hava the content 'help'" do
    visit help_path
      expect(page).to have_content('help')
    end
    it "should have the right title on my help page" do
      visit help_path
      expect(page).to have_title("#{base_title} | Help")
    end
  end  
  describe "About page" do
    it "should hava the content 'help'" do
    visit about_path
    expect(page).to have_content('about')
    end
    it "should have the right title on my about page" do
      visit about_path
      expect(page).to have_title("#{base_title} | About Us")
    end
  end
  
 
    describe "Contact page" do
      it "should hava the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact Me')
    end
    it "should have the right title on my contact page" do
      visit contact_path
      expect(page).to have_title("#{base_title} | Contact")
    end 
    end

  
  
  

end
