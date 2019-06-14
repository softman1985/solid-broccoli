class HomeController < ApplicationController
  def index
    @organizations = Organization.all
    @favorites = current_user.organizations
  end
end
