# == Schema Information
# Schema version: 20110112095703
#
# Table name: persons
#
#  id            :integer(4)      not null, primary key
#  designation   :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  type          :string(255)
#  contact_email :string(255)
#  owner_id      :integer(4)
#

=begin
This class represents a generic "person", I mean an answer to a "who ?" question.
For example, "who gave us money ?" may be
- a natural, real person, ex. "my mum"
- a "moral" person, ex. "the fundation for disabled children"
This class is the mother class.
=end
class Person < ActiveRecord::Base

	# This is a trick to make this class kind of "abstract"
	# when we are unable to use abstract_class due to STI
	validates_presence_of :type, :message => "This class is abstract, you cannot instantiate it."
	
	# designation
	# common, usual designation for this person.
	# ActiveRecord validation :
	validates :designation, :uniqueness => true, :presence => true, :length => { :minimum => 1, :maximum => 70 }

	# in this class, we don't know the answer.
	# child classes will have to redefine this.
	def is_natural?
		# unknown, thus impossible to answer
		fail "The answer is not known at this level"
	end

	# in this class, we don't know the answer
	# child classes will have to redefine this.
	def is_moral?
		# unknown, thus impossible to answer
		fail "The answer is not known at this level"
	end

end
