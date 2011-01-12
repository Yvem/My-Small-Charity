# == Schema Information
# Schema version: 20110111170357
#
# Table name: persons
#
#  id            :integer(4)      not null, primary key
#  designation   :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  type          :string(255)
#  contact_email :string(255)
#

class MoralPerson < Person

	# This is a trick to make this class kind of "abstract"
	# when we are unable to use abstract_class due to STI
	validates_exclusion_of :type, :in => %w(MoralPerson), :message => "This class is abstract, you cannot instantiate it."
	
	# redefinition of parent method
	def is_natural?
		return false
	end

	# redefinition of parent method
	def is_moral?
		return true
	end

end
