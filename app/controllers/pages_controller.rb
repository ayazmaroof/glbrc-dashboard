class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
    @app_links = AppLink.all
  end
end
