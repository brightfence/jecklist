class CreateUserLists < ActiveRecord::Migration
  def change
    create_table :user_lists do |t|
      t.references :user, index: true
      t.references :list, index: true

      t.timestamps null: false
    end
    add_foreign_key :user_lists, :users
    add_foreign_key :user_lists, :lists

    create_join_table :users, :lists do |t|
      t.references :user
      t.references :list
    end
  end
end
