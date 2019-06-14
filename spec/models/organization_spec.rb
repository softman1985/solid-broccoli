require 'rails_helper'

RSpec.describe Organization, type: :model do

    it 'returns the name' do
      organization = Organization.create(name: 'organiztion 1')
      expect(organization.name).to eq 'organiztion 1'
    end

end
