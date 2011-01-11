# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

users = User.create(
		[
			{ :designation => "a", :contact_email => "a@a.a" },
			{ :designation => "b", :contact_email => "b@b.b" },
			{ :designation => "c", :contact_email => "c@c.c" },
		]
	)
