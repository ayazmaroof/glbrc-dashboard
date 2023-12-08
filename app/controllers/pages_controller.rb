class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
    @user_app_links = UserAppLink.where(user_id: current_user.id)
    @app_link_ids = helpers.extract_app_link_ids(@user_app_links)
    @app_links = AppLink.where(id: @app_link_ids)
  end
end
