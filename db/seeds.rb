# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

jon = User.create(name:"jon",password:'password')

pearl = User.create(name:'pearl',password:'password')

sam = User.create(name:'sam', password:'password')

list1 = List.create(title:"First ToDo List")
list2 = List.create(title:"Finish JeckList MVP")

UserList.create(user:jon,list:list1)
UserList.create(user:pearl, list:list1)

UserTask.create(user_id:1,task_id:1)

UserList.create(user:jon,list: list2)
UserList.create(user:sam,list: list2)





