class Task < ActiveRecord::Base
  belongs_to :list
  has_many :assigned_users, through: :user_lists, source: :user
  has_many :user_tasks
  has_many :users, through: :user_tasks
end
