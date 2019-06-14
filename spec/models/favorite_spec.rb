require 'rails_helper'

RSpec.describe Favorite, type: :model do
  before  do
		@user = User.create(email: "mez@gmail.com", password: "123456789")
    @organization = Organization.create(name: 'organiztion 1')
    @organization2 = Organization.create(name: 'organiztion 2')

  end

  it 'user can favorite an organization' do
		@favorite = Favorite.create(user_id: @user.id, organization_id: @organization.id)
    expect(@user.organizations.count).to eq 1

	end

  it 'user can not favorite an organization twice' do
    @favorite = Favorite.create(user_id: @user.id, organization_id: @organization.id)
    expect(@user.organizations.count).to eq 1

    @same_favorite = Favorite.create(user_id: @user.id, organization_id: @organization.id)
    expect(@user.organizations.count).not_to eq 2

    @other_favorite = Favorite.create(user_id: @user.id, organization_id: @organization2.id)
    expect(@user.organizations.count).to eq 2

	end




end
