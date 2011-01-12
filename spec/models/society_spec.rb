require 'spec_helper'

require 'person_spec_shared'

describe Society do

	it_behaves_like "a person object" do
		let(:subclass_additional_valid_inits) { { :owner => 99} }
	end

	it { should be_kind_of(MoralPerson) }

end
