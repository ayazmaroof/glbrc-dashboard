class AppLink < ApplicationRecord
  validates :name, uniqueness: true
  has_many :user_app_links
  has_many :users, through: :user_app_links
end
