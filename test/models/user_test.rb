require 'test_helper'

class UserTest < ActiveSupport::TestCase
	describe Organization, '#name' do
		it 'returns the concatenated first and last name' do
			# setup
			organization = build(:organization, name: 'organiztion 1')

			# excercise and verify
			expect(organization.name).to eq 'organiztion 1'
		end
	end

end
