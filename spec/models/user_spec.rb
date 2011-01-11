require 'spec_helper'

require 'person_spec_shared'

describe User do

	it_behaves_like "a person object" do
		let(:subclass_additional_valid_inits) { { :contact_email => "a@a.a"} }
	end

	it { should be_kind_of(NaturalPerson) }



end
