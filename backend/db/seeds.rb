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

topic1 = Topic.create(name: 'Intro to Javascript', user_id: dhara.id)
topic2 = Topic.create(name: 'Variables', user_id: tun.id)

question1 = Question.create(name: 'What is the definition of Javascript?')
question2 = Question.create(name: 'What year was Jacascript created?')

question3 = Question.create(name: 'What is a variable?')
question4 = Question.create(name: 'Do we still us var as a variable declaration in 2019?')

answer1 = Answer.create(name: 'Object-oriented computer programming language')
answer2 = Answer.create(name: '1995')
answer3 = Answer.create(name: 'A container of values that can be changed at anytime.')
answer4 = Answer.create(name: 'NO')