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
q1 = Question.create(equation:"1+2*3", operation: "pemdas", user_id: bryan.id)
q2 = Question.create(equation:"3*3/2", operation: "pemdas", user_id: bryan.id)
q3 = Question.create(equation:"12*6", operation: "multiplication", user_id: bryan.id)
q4 = Question.create(equation:"42/6", operation: "division", user_id: bryan.id)
q5 = Question.create(equation:"19-8", operation: "subtraction", user_id: bryan.id)
q6 = Question.create(equation:"(12-3)*2", operation: "pemdas", user_id: bryan.id)
q7 = Question.create(equation:"0-7", operation: "subtraction", user_id: bryan.id)
q8 = Question.create(equation:"8*7", operation: "multiplication", user_id: bryan.id)
q9 = Question.create(equation:"2-9", operation: "multiplication", user_id: bryan.id)
q10 = Question.create(equation:"7*2-(2*6)", operation: "pemdas", user_id: bryan.id)
q11 = Question.create(equation:"9/3", operation: "division", user_id: bryan.id)

Piggy.create(name: "B", user_id: bryan.id)
UserQuestion.create(user_id: bryan.id, question_id: q.id)
