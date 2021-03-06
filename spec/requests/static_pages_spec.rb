require 'spec_helper'

describe "Static Pages" do

	let(:base_title) { "Ruby on Rails Tutorial Sample App | " }
	subject { page }
	
  	describe "Home page" do
  		before { visit_root_path }

  		it"should have the content 'Sample App'" do
			expect(page).to have_content('Sample App')
		end

		it"should have the title 'Home'" do
			expect(page).to have_title("Ruby on Rails Tutorial Sample App")
		end

		it"should not have a custom page title" do
			expect(page).not_to have_title('| Home')
		end
	end

	describe "Help page" do
		
		it "Should have the content 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help')
		end

		it"should have the title 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_title("#{base_title}Help")
		end
	end  	

	describe "About Page" do

		it "Should have the content 'About Us'" do
			visit '/static_pages/about'
			expect(page).to have_content('About Us')
		end

		it"should have the title 'About Us'" do
			visit '/static_pages/about'
			expect(page).to have_title("#{base_title}About Us")
		end
	end

	describe "Contact" do

		it "Should have the content 'Contact'" do
			visit '/static_pages/contact'
			expect(page).to have_content('Contact')
		end

		it "Should have the title 'Contact'" do
			visit '/static_pages/contact'
			expect(page).to have_title("#{base_title}Contact")
		end
	end
end
