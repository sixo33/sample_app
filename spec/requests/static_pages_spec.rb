require 'spec_helper'

describe "Static pages" do

  subject { page }
  # Sets up the page variable provided by Capybara as the
  # subject of all upcoming tests, allowing for simplifi-
  # cation of the code using 'it'.

  describe "Home page" do

    before { visit root_path }
    # Instructs the tester to simulate a visit to the page
    # defined in root_path (e.g. static_pages/home --
    # see config/routes.rb) before each of the three tests
    # listed below

    it { should have_content('Sample App') }

    it { should have_title(full_title('')) }
    # full_title is a method declaration outlined in
    # /spec/support/utilities.rb; 
    
    it { should_not have_title(' | Home') }   
  end

  describe "Help Page" do

    before { visit help_path }

  	it { should have_content('Help') }
  	it { should have_title(full_title('Help')) }
  end

  describe "About page" do

    before { visit about_path }

  	it { should have_content('About Us') }
    it { should have_title(full_title('About Us')) }
  end

  describe "Contact page" do

    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
  
end
