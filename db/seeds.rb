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
scarlett = User.create(name: "Scarlett")
q1 = Question.create(equation:"1+2*3", operation: "pemdas", user_id: bryan.id)
q2 = Question.create(equation:"3*3/2", operation: "pemdas", user_id: bryan.id)
q3 = Question.create(equation:"12*6", operation: "multiplication", user_id: bryan.id)
q4 = Question.create(equation:"42/6", operation: "division", user_id: bryan.id)
q5 = Question.create(equation:"19-8", operation: "subtraction", user_id: bryan.id)
q6 = Question.create(equation:"(12-3)*2", operation: "pemdas", user_id: bryan.id)
q7 = Question.create(equation:"0-7", operation: "subtraction", user_id: bryan.id)
q8 = Question.create(equation:"8*7", operation: "multiplication", user_id: bryan.id)
q9 = Question.create(equation:"2*9", operation: "multiplication", user_id: bryan.id)
q10 = Question.create(equation:"7*2-(2*6)", operation: "pemdas", user_id: bryan.id)
q11 = Question.create(equation:"9/3", operation: "division", user_id: bryan.id)
q12 = Question.create(equation:"9+3", operation: "addition", user_id: bryan.id)
q13 = Question.create(equation:"19+6", operation: "addition", user_id: bryan.id)
q14 = Question.create(equation:"3+17", operation: "addition", user_id: bryan.id)
q15 = Question.create(equation:"5+22", operation: "addition", user_id: bryan.id)
q16 = Question.create(equation:"6*8", operation: "multiplication", user_id: bryan.id)
q17 = Question.create(equation:"42/2", operation: "division", user_id: bryan.id)
q18 = Question.create(equation:"7^2-(2*6)", operation: "pemdas", user_id: bryan.id)
q19 = Question.create(equation:"34-2*(3^2)", operation: "pemdas", user_id: bryan.id)
q20 = Question.create(equation:"3*4", operation: "multiplication", user_id: bryan.id)
q21 = Question.create(equation:"25/5", operation: "division", user_id: bryan.id)
q22 = Question.create(equation:"12/4", operation: "division", user_id: bryan.id)
q23 = Question.create(equation:"15-8", operation: "subtraction", user_id: bryan.id)
q24 = Question.create(equation:"9-6", operation: "subtraction", user_id: bryan.id)
q25 = Question.create(equation:"8-3", operation: "subtraction", user_id: bryan.id)

#Creating more addition problems
20.times do
x = rand(100)
y = rand (100)
Question.find_or_create_by(equation:"#{x}+#{y}", operation: "addition", user_id: bryan.id)
end

#Creating more subtraction problems
20.times do
  x = rand(100)
  y = rand(100)
    while x < y
      x = rand(100)
    end
Question.find_or_create_by(equation:"#{x}-#{y}", operation: "subtraction", user_id: bryan.id)
end

#Creating more multiplication problems
20.times do

x = rand(12)
y = rand(12)

while x == 0
  x = rand(12)
end
Question.find_or_create_by(equation:"#{x}*#{y}", operation: "multiplication", user_id: bryan.id)
end

#Creating more division problems
20.times do
x = rand(10..100)
y = rand(2..12)

until x%y == 0
  x = rand(100)
  y = rand(2..12)
end
Question.find_or_create_by(equation:"#{x}/#{y}", operation: "division", user_id: bryan.id)
end

Piggy.create(name: "B", user_id: bryan.id)
UserQuestion.create(user_id: bryan.id, question_id: q16.id)
