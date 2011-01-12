module ApplicationHelper

	# Return a title on a per-page basis.
	def title
		base_title = "My Small Charity"
		if @title.nil?
			base_title
		else
			"#{base_title} - #{@title}"
		end
	end
	
	# Return a logo
	def logo
		image_tag("farmHouseProfile1_48x48.png", :alt => "Logo")
	end

end
