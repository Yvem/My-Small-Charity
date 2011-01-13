class SocietiesController < ApplicationController

	active_scaffold :society do |config|
		config.create.columns = [:designation, :owner_id]
		config.update.columns = [:designation, :owner_id]
	end

end
