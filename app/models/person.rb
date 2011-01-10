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

=begin
This class represents a generic "person", I mean an answer to a "who ?" question.
For example, "who gave us money ?" may be
- a natural, real person, ex. "my mum"
- a "moral" person, ex. "the fundation for disabled children"
This class is the mother class.
=end
class Person < ActiveRecord::Base

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
