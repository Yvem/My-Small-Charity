require 'spec_helper'

require 'person_spec_shared'


describe MoralPerson do

	it_behaves_like "a person object"

	it { should be_kind_of(Person) }

	it "should report as a moral person" do
		# normal person
		mp = described_class.new(:designation => "A")

		mp.is_moral?.should be_true
	end

	it "should not report as a natural person" do
		# normal person
		mp = described_class.new(:designation => "A")

		mp.is_natural?.should be_false
	end
	
end
