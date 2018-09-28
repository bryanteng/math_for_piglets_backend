# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Question.destroy_all
Piggy.destroy_all
UserQuestion.destroy_all


bryan = User.create(name: "Bryan")
q = Question.create(equation:"1+2*3", operation: "pemdas", user_id: bryan.id)
Piggy.create(name: "B", user_id: bryan.id)
UserQuestion.create(user_id: bryan.id, question_id: q.id)
