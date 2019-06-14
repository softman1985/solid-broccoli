require 'rails_helper'


RSpec.describe FavoritesController, type: :controller do
	describe 'Favorites controller request specs' do
		login_user

		before(:each) do
			request.env["HTTP_REFERER"] = "events_path"
		end


		context 'POST #create' do
			let!(:favorite ) { FactoryBot.create :favorite }

			it 'create a new favorite' do
				params = {
						user_id: 1,
						organization_id: 1
				}
				expect { post(:create, params: { favorite: params }) }.to change(Favorite, :count).by(1)
				expect(response).to redirect_to("events_path")
				expect(flash[:notice]).to eq 'Add as Favorite'
			end
		end




	end
end


