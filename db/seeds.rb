# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

users = User.create(
		[
			{ :designation => "a", :contact_email => "a@a.a", :password => "aaaaaa" },
			{ :designation => "b", :contact_email => "b@b.b", :password => "bbbbbb" },
			{ :designation => "c", :contact_email => "c@c.c", :password => "cccccc" },
		]
	)

societies = Society.create(
		[
			{ :designation => "AAA", :owner_id => User.find_by_designation("a").id },
			{ :designation => "BBB", :owner_id => User.find_by_designation("b").id }
		]
	)

