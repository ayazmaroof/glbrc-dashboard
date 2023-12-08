module UserAppLinksHelper
  def extract_app_link_ids(user_app_links)
    user_app_links.map do |user_app_link|
      user_app_link.app_link_id
    end
  end
end
