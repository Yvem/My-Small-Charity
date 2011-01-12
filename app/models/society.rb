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

class Society < MoralPerson
	
	validates :owner_id, :presence => true
	
	# associations
	belongs_to :user, :foreign_key => "owner_id"
	 
end
