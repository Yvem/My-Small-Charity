class UsersController < ApplicationController

	active_scaffold :user do |config|
		config.create.columns = [:designation, :contact_email, :password]
		config.update.columns = [:designation, :contact_email, :password]
		
		config.show.columns = [:designation, :contact_email]
		config.show.columns << :gravatar
	end


end
