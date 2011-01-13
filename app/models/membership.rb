# == Schema Information
# Schema version: 20110113161519
#
# Table name: memberships
#
#  id         :integer(4)      not null, primary key
#  member_id  :integer(4)
#  society_id :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class Membership < ActiveRecord::Base

	attr_accessible # none
	
	# associations
	belongs_to :society, :foreign_key => "society_id"
	# user
	
end
