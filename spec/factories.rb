# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
	user.designation     "Michael Hartl"
	user.contact_email   "mhartl@example.com"
	user.password        "foobar"
end
