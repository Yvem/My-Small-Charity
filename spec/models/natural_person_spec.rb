require 'spec_helper'

require 'person_spec_shared'


describe NaturalPerson do

	it_behaves_like "a person object"

	it { should be_kind_of(Person) }

	it "should not report as a moral person" do
		# normal person
		np = described_class.new(:designation => "A")

		np.is_moral?.should be_false
	end

	it "should report as a natural person" do
		# normal person
		np = described_class.new(:designation => "A")

		np.is_natural?.should be_true
	end

end
