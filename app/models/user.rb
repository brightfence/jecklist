class User < ActiveRecord::Base
  has_secure_password
  has_many :user_lists
  has_many :jecklists, through: :user_lists, source: :list
  has_many :user_tasks
  has_many :assigned_tasks, through: :user_tasks, source: :task
end
