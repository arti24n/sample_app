require 'rails_helper'

feature "Static pages" do
  
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  feature "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    
    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end
    
  feature "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end
  
  feature "About page" do
      
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About Us")
    end
  end
  
    feature "Contact page" do
      
    it "should have the content 'Our Contacts'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Our Contacts')
    end
    
    it "should have the title 'Contacts'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contacts")
    end
  end
end
