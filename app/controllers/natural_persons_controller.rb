class NaturalPersonsController < ApplicationController
	active_scaffold :natural_person do |config|
		config.sti_children = [:User]
		config.sti_create_links = true
	end
	
end
