class User < ActiveRecord::Base
  has_secure_password
  has_many :user_lists
  has_many :jecklists, through: :user_lists, source: :list
end
