require 'spec_helper'

describe "Static pages" do

  subject { page }
  # Sets up the page variable provided by Capybara as the
  # subject of all upcoming tests, allowing for simplifi-
  # cation of the code using 'it'.

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end
  # Allows further refinement and concision of tests; now
  # we need only provide the 'heading' and 'page_title'
  # variables and use an it_should_behave_like "all static
  # pages" test

  describe "Home page" do

    before { visit root_path }
    # Instructs the tester to simulate a visit to the page
    # defined in root_path (e.g. static_pages/home --
    # see config/routes.rb) before each of the three tests
    # listed below

    let(:heading)     { 'Sample App' }
    # Sets the 'heading' variable for the shared_examples
    # testing method.

    let(:page_title)  { '' }
    # Sets the 'page_title' variable for the shared_examples
    # testing method. The inclusion of a blank string ensures
    # that when the full_title method is called, since page_
    # title is empty, it will return only the generic "Ruby
    # on Rails Tutorial Sample App".

    it_should_behave_like "all static pages"

    it { should_not have_title(' | Home') }   
  end

  describe "Help Page" do

    before { visit help_path }

    let(:heading)     { 'Help' }
    let(:page_title)  { 'Help' }

    it_should_behave_like "all static pages"
  end  

  describe "About page" do

    before { visit about_path }

    let(:heading)     { 'About Us' }
    let(:page_title)  { 'About Us' }

    it_should_behave_like "all static pages"
  end

  describe "Contact page" do

    before { visit contact_path }

    let (:heading)    { 'Contact Us' }
    let (:page_title) { 'Contact Us' }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact Us'))
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign Up'))
    click_link "sample app"
    expect(page).to have_title(full_title(''))
  end
  
end
