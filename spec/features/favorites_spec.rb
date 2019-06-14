require 'rails_helper'
require 'capybara/rails'
require 'capybara/rspec'
require "selenium-webdriver"
include Warden::Test::Helpers

RSpec.feature "Favorites", type: :feature do

  # before(:each) do
	#
		# @user = User.create(email: "mez@gmail.com", password: "123456789")
		# @user2 = User.create(email: "mez2@gmail.com", password: "123456789")
		# @organization = Organization.create(name: 'organiztion 1')
		# @organization2 = Organization.create(name: 'organiztion 2')
	#
	#
	# end
	#
	#
	# scenario "#check favorite ", js: true do
		# login_as(@user)
		# visit root_path
		# sleep 15
  # end

end
