class UserAppLinksController < ApplicationController
  before_action :authenticate_user!

  # Here we create a list of all the apps (or app-links) that a user can add to their dashboard.
  # This list does not contain the apps that the user has already added to their dashboard.
  def index
    @user_app_links = UserAppLink.where(user_id: current_user.id)
    @user_app_ids = helpers.extract_app_link_ids(@user_app_links)
    @app_links = AppLink.where.not(id: @user_app_ids)
  end

  # This method responds to the submit action of the add app form.
  # We take all the app ids that the user selected and then create corresponding entries in the user-app-link table.
  def create
    @app_link_ids = user_app_link_params
    @user_app_links_to_create = []
    @app_link_ids.each do |app_link_id|
      unless app_link_id.strip.empty?
        @user_app_links_to_create.push({ user_id: current_user.id, app_link_id: app_link_id})
      end
    end
    @user_app_links = UserAppLink.create(@user_app_links_to_create)
    respond_to do |format|
      if @user_app_links_to_create.empty?
        format.html { redirect_to user_app_link_add_path, alert: "No apps were selected" }
      elsif @user_app_links.all? { |user_app_link| user_app_link.valid? }
        format.html { redirect_to pages_home_path, notice: "Apps were added successfully to the dashboard" }
      else
        format.html { render user_app_links_path, status: :unprocessable_entity }
      end
    end
  end

  private
  def user_app_link_params
    params.require(:app_links_ids)
  end
end
