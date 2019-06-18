# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all 
Topic.destroy_all
Question.destroy_all
Answer.destroy_all

dhara = User.create(username: 'Dhara')
tun = User.create(username: 'Tun')
krunal = User.create(username: 'Krunal')

topic1 = Topic.create(name: 'Intro to Javascript', user_id: dhara.id)
topic2 = Topic.create(name: 'Variables', user_id: tun.id)

question1 = Question.create(name: 'What is the definition of Javascript?', topic_id: topic1.id)
question2 = Question.create(name: 'What year was Jacascript created?', topic_id: topic1.id)

question3 = Question.create(name: 'What is a variable?', topic_id: topic2.id)
question4 = Question.create(name: 'Do we still us var as a variable declaration in 2019?', topic_id: topic2.id)

answer1 = Answer.create(name: 'Object-oriented computer programming language', question_id: question1.id, correct: true)
answer5 = Answer.create(name: 'THIS', question_id: question1.id, correct: false)
answer6 = Answer.create(name: 'IS', question_id: question1.id, correct: false)
answer7 = Answer.create(name: 'WRONG', question_id: question1.id, correct: false)


answer2 = Answer.create(name: '1995', question_id: question2.id)
answer3 = Answer.create(name: 'A container of values that can be changed at anytime.', question_id: question3.id)
answer4 = Answer.create(name: 'NO', question_id: question4.id)