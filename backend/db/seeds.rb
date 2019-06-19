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

#* seed for all

dhara = User.create(username: 'Dhara')
tun = User.create(username: 'Tun')
krunal = User.create(username: 'Krunal')
kris = User.create(username: 'Kris')
anjali = User.create(username: 'Anjali')
zalak = User.create(username: 'Zalak')


topic1 = Topic.create(name: 'Intro to Javascript', user_id: dhara.id)
topic2 = Topic.create(name: 'Variables', user_id: tun.id)
topic3 = Topic.create(name: 'Conditional', user_id: krunal.id)
topic4 = Topic.create(name: 'Functions', user_id: kris.id)
topic5 = Topic.create(name: 'Scopes', user_id: anjali.id)
topic6 = Topic.create(name: 'Loop', user_id: zalak.id)


# * Topic 1
question1 = Question.create(name: 'What is the definition of Javascript?', topic_id: topic1.id)
question2 = Question.create(name: 'What year was Jacascript created?', topic_id: topic1.id)
question3 = Question.create(name: 'Inside which HTML element do we put the JavaScript?', topic_id: topic1.id)
question4 = Question.create(name: 'Where is the correct place to insert a JavaScript?', topic_id: topic1.id)
question5 = Question.create(name: 'How can you add a comment in a JavaScript?', topic_id: topic1.id)

# * Topic 2
question6 = Question.create(name: 'What is a variable?', topic_id: topic2.id)
question7 = Question.create(name: 'Do we still use var as a variable declaration in 2019?', topic_id: topic2.id)
question8 = Question.create(name: 'Which of the following is true about variable naming conventions in JavaScript?', topic_id: topic2.id)
# question9 = Question.create(name: 'What is a variable?', topic_id: topic2.id)
# question10 = Question.create(name: 'What is a variable?', topic_id: topic2.id)

# * Topic 3
question11 = Question.create(name: 'How to write an IF statement in JavaScript?', topic_id: topic3.id)
question12 = Question.create(name: 'To tell if something is perfectly equal, what should you use?', topic_id: topic3.id)
question13 = Question.create(name: 'What does the following expression return? "chatty" === "chatty"', topic_id: topic3.id)
# question14 = Question.create(name: 'What is a variable?', topic_id: topic3.id)
# question15 = Question.create(name: 'What is a variable?', topic_id: topic3.id)

# * Topic 4
# question16 = Question.create(name: 'What is a variable?', topic_id: topic4.id)
# question17 = Question.create(name: 'What is a variable?', topic_id: topic4.id)
# question18 = Question.create(name: 'What is a variable?', topic_id: topic4.id)
# question19 = Question.create(name: 'What is a variable?', topic_id: topic4.id)
# question20 = Question.create(name: 'What is a variable?', topic_id: topic4.id)

# * Topic 5
# question21 = Question.create(name: 'What is a variable?', topic_id: topic5.id)
# question22 = Question.create(name: 'What is a variable?', topic_id: topic5.id)
# question23 = Question.create(name: 'What is a variable?', topic_id: topic5.id)
# question24 = Question.create(name: 'What is a variable?', topic_id: topic5.id)
# question25 = Question.create(name: 'What is a variable?', topic_id: topic5.id)

# * TOPIC 6
# question26 = Question.create(name: 'What is a variable?', topic_id: topic6.id)
# question27 = Question.create(name: 'What is a variable?', topic_id: topic6.id)
# question28= Question.create(name: 'What is a variable?', topic_id: topic6.id)
# question29 = Question.create(name: 'What is a variable?', topic_id: topic6.id)
# question30 = Question.create(name: 'What is a variable?', topic_id: topic6.id)






# #*Q:1 
answer1 = Answer.create(name: 'Object-oriented computer programming language', question_id: question1.id, correct: true)
answer2 = Answer.create(name: 'THIS', question_id: question1.id, correct: false)
answer3 = Answer.create(name: 'IS', question_id: question1.id, correct: false)
answer4 = Answer.create(name: 'WRONG', question_id: question1.id, correct: false)

# #*Q:2
answer5 = Answer.create(name: '1995', question_id: question2.id, correct: true)
answer5a = Answer.create(name: '2000', question_id: question2.id, correct: false)

# #*Q:3
answer6 = Answer.create(name: '</script>', question_id: question3.id, correct: true)
answer7 = Answer.create(name: '<js>', question_id: question3.id, correct: false)
answer8 = Answer.create(name: '<javascript>', question_id: question3.id, correct: false)

# #*Q:4
answer9 = Answer.create(name: 'The <head> section', question_id: question4.id, correct: false)
answer10 = Answer.create(name: 'Both the <head> section and the <body> section are corrects', question_id: question4.id, correct: true)
answer11 = Answer.create(name: 'None', question_id: question4.id, correct: false)

# #*Q:5
answer12 = Answer.create(name: '<!--This is a comment-->', question_id: question5.id, correct: false)
answer13 = Answer.create(name: 'This is a comment', question_id: question5.id, correct: false)
answer14 = Answer.create(name: '//This is a comment', question_id: question5.id, correct: true)
answer15 = Answer.create(name: '#This is a comment', question_id: question5.id, correct: false)

# #*Q:6
answer16 = Answer.create(name: 'A container of values that can be changed at anytime.', question_id: question6.id, correct: true)
answer17 = Answer.create(name: 'None', question_id: question6.id, correct: false)
answer18 = Answer.create(name: 'None', question_id: question6.id, correct: false)
answer19 = Answer.create(name: 'None', question_id: question6.id, correct: false)

# #*Q:7
answer20 = Answer.create(name: 'YES', question_id: question7.id, correct: false)
answer21 = Answer.create(name: 'NO', question_id: question7.id, correct: true)

# #*Q:8
answer22 = Answer.create(name: 'You should not use any of the JavaScript reserved keyword as variable name.', question_id: question8.id, correct: false)
answer23 = Answer.create(name: 'JavaScript variable names should not start with a numeral (0-9).', question_id: question8.id, correct: false)
answer24 = Answer.create(name: 'Both of above', question_id: question8.id, correct: true)
answer25 = Answer.create(name: 'None', question_id: question8.id, correct: false)

# Q:9 
# answer26 = Answer.create(name: 'YES', question_id: question9.id, correct: false)
# answer27 = Answer.create(name: 'YES', question_id: question9.id, correct: false)
# answer28 = Answer.create(name: 'YES', question_id: question9.id, correct: false)
# answer29 = Answer.create(name: 'YES', question_id: question9.id, correct: false)

# Q:10 
# answer30 = Answer.create(name: 'YES', question_id: question10.id, correct: false)
# answer31 = Answer.create(name: 'YES', question_id: question10.id, correct: false)
# answer32 = Answer.create(name: 'YES', question_id: question10.id, correct: false)
# answer33 = Answer.create(name: 'YES', question_id: question10.id, correct: false)

# #*Q:11
answer34 = Answer.create(name: 'if i = 5  ', question_id: question11.id, correct: false)
answer35 = Answer.create(name: 'if (i == 5)  ', question_id: question11.id, correct: true)
answer36 = Answer.create(name: 'if i == 5 then', question_id: question11.id, correct: false)
answer37 = Answer.create(name: 'if i = 5 then', question_id: question11.id, correct: false)

# #*Q:12
answer38 = Answer.create(name: '==', question_id: question12.id, correct: true)
answer39 = Answer.create(name: '<', question_id: question12.id, correct: false)
answer40 = Answer.create(name: '>', question_id: question12.id, correct: false)
answer41 = Answer.create(name: '>=', question_id: question12.id, correct: false)

# #*Q:13
answer42 = Answer.create(name: 'false', question_id: question13.id, correct: false)
answer43 = Answer.create(name: 'true', question_id: question13.id, correct: true)

#*Q:14
# answer44 = Answer.create(name: '==', question_id: question14.id, correct: true)
# answer45 = Answer.create(name: '==', question_id: question14.id, correct: true)
# answer46 = Answer.create(name: '==', question_id: question14.id, correct: true)
# answer47= Answer.create(name: '==', question_id: question14.id, correct: true)

#*Q:15
# answer48 = Answer.create(name: 'YES', question_id: question15.id, correct: false)
# answer49 = Answer.create(name: 'YES', question_id: question15id, correct: false)
# answer50 = Answer.create(name: 'YES', question_id: question15.id, correct: false)
# answer51 = Answer.create(name: 'YES', question_id: question15.id, correct: false)

#*Q:16
# answer52 = Answer.create(name: 'YES', question_id: question16.id, correct: false)
# answer53 = Answer.create(name: 'YES', question_id: question16.id, correct: false)
# answer54 = Answer.create(name: 'YES', question_id: question16.id, correct: false)
# answer55 = Answer.create(name: 'YES', question_id: question16.id, correct: false)
