class CreateUserTasks < ActiveRecord::Migration
  def change
    create_table :user_tasks do |t|
      t.references :user
      t.references :task

      t.timestamps null: false
    end
  end
end
