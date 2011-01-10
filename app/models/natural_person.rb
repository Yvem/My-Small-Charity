# == Schema Information
# Schema version: 20110107143918
#
# Table name: persons
#
#  id            :integer(4)      not null, primary key
#  designation   :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  contact_email :string(255)
#

class NaturalPerson < Person

	# redefinition of parent method
	def is_natural?
		return true
	end

	# redefinition of parent method
	def is_moral?
		return false
	end

end
