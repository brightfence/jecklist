class List < ActiveRecord::Base
  has_many :user_lists
  has_many :assigned_users, through: :user_lists, source: :user
  has_many :tasks
end
