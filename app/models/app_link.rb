class AppLink < ApplicationRecord
  validates :name, uniqueness: true
end
