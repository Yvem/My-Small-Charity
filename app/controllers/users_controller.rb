class UsersController < ApplicationController

	active_scaffold :user do |config|
		config.create.columns = [:designation, :contact_email]
		config.update.columns = [:designation, :contact_email]
	end

end
