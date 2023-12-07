class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, uniqueness: true
  validates :username, uniqueness: true
  has_many :user_app_links
  has_many :app_links, through: :user_app_links

  after_create_commit :create_user_app_link_entries

  def create_user_app_link_entries
    @app_links = AppLink.where(default_status: true)
    @user_app_links_to_create = []
    @app_links.each do |app_link|
      @user_app_links_to_create.push({ user_id: self.id, app_link_id: app_link.id})
    end
    UserAppLink.create(@user_app_links_to_create)
  end

  def email_required?
    false
  end

  def email_changed?
    false
  end
end
