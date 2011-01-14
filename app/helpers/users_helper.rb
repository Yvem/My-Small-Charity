module UsersHelper
	def gravatar_show_column(record)
		gravatar_image_tag record.contact_email, :class => "gravatar"
	end
end
