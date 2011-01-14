require 'spec_helper'

require 'person_spec_shared'
require 'sti_spec_shared'

describe User do

	let(:valid_default_attrs) { { :designation => "a", :contact_email => "a@a.a", :password => "secret" } }

	it_behaves_like "a person object" do
		let(:subclass_additional_default_attrs) { valid_default_attrs }
	end

	it_behaves_like "a non-abstract STI object" do
		let(:the_valid_default_attrs) { valid_default_attrs }
	end

	it { should be_kind_of(NaturalPerson) }

	describe "basic authentification" do
	
		before(:each) do
			@user = User.create!(valid_default_attrs)
		end

		it "should always have a password" do
			p = described_class.new(valid_default_attrs.merge( :password => nil ))

			# object should be invalid
			p.should_not be_valid

			# one error should be related to the designation
			p.errors.should include(:password)

			# and the designation error should inlude "can't be blank"
			p.errors[:password].should include("can't be blank")
			p.errors[:password].should eq(["can't be blank", "is too short (minimum is 6 characters)"]) # no more, no less
		end

		it "should reject short passwords" do
			short = "a" * 5
			p = described_class.new(valid_default_attrs.merge(:password => short))
			p.should_not be_valid
		end

		it "should reject long passwords" do
			long = "a" * 41
			p = described_class.new(valid_default_attrs.merge(:password => long))
			p.should_not be_valid
		end
		
		it "should have an password hash attribute" do
			@user.should respond_to(:password_hash)
		end

		it "should have a salt attribute" do
			@user.should respond_to(:salt)
		end
		
		it "should set the password hash" do
			@user.password_hash.should_not be_blank
		end

		describe "password_match? method" do

			it "should be true if the passwords match" do
				@user.password_match?(valid_default_attrs[:password]).should be_true
			end

			it "should be false if the passwords don't match" do
				@user.password_match?("invalid").should be_false
			end
			
		end
		
		describe "authenticate method" do

			it "should return nil on email/password mismatch" do
				wrong_password_user = described_class.authenticate(valid_default_attrs[:contact_email], "wrongpass")
				wrong_password_user.should be_nil
			end

			it "should return nil for an email address with no user" do
				nonexistent_user = described_class.authenticate("bar@foo.com", valid_default_attrs[:password])
				nonexistent_user.should be_nil
			end

			it "should return the user on email/password match" do
				matching_user = described_class.authenticate(valid_default_attrs[:contact_email], valid_default_attrs[:password])
				matching_user.should == @user
			end
		end


	end # describe "basic authentification"
	
end # describe User
