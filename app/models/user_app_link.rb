class UserAppLink < ApplicationRecord
  belongs_to :user
  belongs_to :app_link
end
