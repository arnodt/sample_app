require 'spec_helper'

describe "StaticPages" do

	subject { page }
	
	describe "GET /static_pages (Home page)" do
	
		before(:each) {visit root_path}
		
		it { should have_selector('h1', text: 'Sample App') }
		it { should have_selector('title', text: full_title('Home')) }
	end
	
	describe "GET /static_pages (Help page)" do
		
		before(:each) {visit help_path}
	
		it { should have_selector('h1', text: 'Help') }
		it { should have_selector('title', text: full_title('Help')) }
	end
  
	describe "GET /static_pages (About page)" do
	
		before(:each) {visit about_path}
	
		it { should have_selector('h1', text: 'About') }
		it { should have_selector('title', text: full_title('About Us')) }
	end
	
	describe "GET /static_pages (Contact page)" do
	
		before(:each) {visit contact_path}
	
		it { should have_selector('h1', text: 'Contact') }
		it { should have_selector('title', text: full_title('Contact')) }
	end
end
