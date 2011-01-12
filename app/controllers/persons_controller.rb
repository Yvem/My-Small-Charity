class PersonsController < ApplicationController

	active_scaffold :person do |config|
		# we add 2 columns with computed values
		config.list.columns << :is_natural?
		config.list.columns << :is_moral?
	end
	
end
