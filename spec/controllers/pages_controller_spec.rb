require 'spec_helper'

describe PagesController do
	render_views

	before(:each) do
		@title_base = "My Small Charity"
		@title_separator = " - "
	end


	describe "The home page" do
	
		it "should be accessible" do
			get 'home'
			response.should be_success
		end
		
		it "should have the right title" do
			get 'home'
			response.should have_selector("title",
					:content => @title_base + @title_separator + "Home")
		end

	end

	describe "The about page" do
	
		it "should be accessible" do
			get 'about'
			response.should be_success
		end
		
		it "should have the right title" do
			get 'about'
			response.should have_selector("title",
					:content => @title_base + @title_separator + "About")
		end

	end

	describe "The help page" do
	
		it "should be accessible" do
			get 'help'
			response.should be_success
		end
		
		it "should have the right title" do
			get 'help'
			response.should have_selector("title",
					:content => @title_base + @title_separator + "Help")
		end

	end

	describe "The contact page" do
	
		it "should be accessible" do
			get 'contact'
			response.should be_success
		end
		
		it "should have the right title" do
			get 'contact'
			response.should have_selector("title",
					:content => @title_base + @title_separator + "Contact")
		end

	end

end
