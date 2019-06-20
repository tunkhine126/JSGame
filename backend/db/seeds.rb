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
topic5 = Topic.create(name: 'Scope', user_id: anjali.id)

# * Intro to Javascript (topic1)
question1 = Question.create(name: 'What type of programming language is Javascript?', topic_id: topic1.id)
question2 = Question.create(name: 'What year was Jacascript created?', topic_id: topic1.id)
question3 = Question.create(name: 'Inside which HTML element do we write JavaScript?', topic_id: topic1.id)
question4 = Question.create(name: 'Where is the correct place to insert JavaScript?', topic_id: topic1.id)
question5 = Question.create(name: 'How can you add a comment in a JavaScript?', topic_id: topic1.id)

# * Variables (topic2)
question6 = Question.create(name: 'What is the definition of a variable in Javascript?', topic_id: topic2.id)
question7 = Question.create(name: 'Do we still use var as a variable declaration in 2019?', topic_id: topic2.id)
question8 = Question.create(name: 'Which of the following is true about variable naming conventions in JavaScript?', topic_id: topic2.id)
question9 = Question.create(name: 'A local variable can be declared anywhere in your JavaScript code', topic_id: topic2.id)
question10 = Question.create(name: 'Within the body of a function, a local variable takes precedence over a global variable with the same name.', topic_id: topic2.id)

# * Conditionals (topic3)
question11 = Question.create(name: 'How do you write an IF statement in JavaScript?', topic_id: topic3.id)
question12 = Question.create(name: 'In order to tell if something is perfectly equal, which of the below should you use?', topic_id: topic3.id)
question13 = Question.create(name: 'What does the following expression return? "Number("1") - 1 == 0;', topic_id: topic3.id)
question14 = Question.create(name: 'Which of these is not a conditional?', topic_id: topic3.id)
question15 = Question.create(name: 'The conditional operator is the only JavaScript operator that takes three operands.', topic_id: topic3.id)

# * Functions (topic 4)
question16 = Question.create(name: 'A function requires a keyword, unique function name, a list of parameters, and a statement block surrounded by curly braces', topic_id: topic4.id)
question17 = Question.create(name: 'Is this a proper function: let x = function (a, b) {return a * b};', topic_id: topic4.id)
question18 = Question.create(name: 'Which of these are not allowed when naming a function?' , topic_id: topic4.id)
question19 = Question.create(name: 'How do you call the function named "myFunction"?', topic_id: topic4.id)
question20 = Question.create(name: 'In a function, what does the word “arguments” refer to?', topic_id: topic4.id)

# * Scope (topic 5)
question21 = Question.create(name: 'What alert is displayed?:
                                      function aaa() {
                                        return
                                        {
                                            test: 1
                                        };
                                    }
                                    alert(typeof aaa());', topic_id: topic5.id)
question22 = Question.create(name: 'What is printed in the console?
                                    let foo = function foo() {
                                      console.log(foo === foo);  
                                    };
                                    foo();', topic_id: topic5.id)
question23 = Question.create(name: 'What alert is displayed?:
                                        function outer(){
                                          var x=1;
                                          var inner = function(){
                                            alert(">"+x);
                                          }
                                          x=2;
                                          return inner;
                                      }
                                        
                                      outer()();', topic_id: topic5.id)
question24 = Question.create(name: 'What is returned? 
                                    function foo() {
                                      function bar(){
                                        return 3;
                                        }
                                        return bar();
                                          function bar() {
                                            return 8;
                                            }
                                    } 
                                    foo();', topic_id: topic5.id)
question25 = Question.create(name: 'What is returned?
                                    let text = "outside";
                                    function logIt(){
                                        console.log(text);
                                        var text = "inside";
                                    };
                                    logIt();', topic_id: topic5.id)

# // ANSWERS

# #*Q:1 
answer1 = Answer.create(name: 'Object-oriented programming language', question_id: question1.id, correct: false)
answer2 = Answer.create(name: 'Interpreted programming language', question_id: question1.id, correct: true)
answer3 = Answer.create(name: 'Procedural Programming Language', question_id: question1.id, correct: false)
answer4 = Answer.create(name: 'Functional Programming Language', question_id: question1.id, correct: false)

# #*Q:2
answer5 = Answer.create(name: '2001', question_id: question2.id, correct: true)
answer5a = Answer.create(name: '1995', question_id: question2.id, correct: true)
answer5b = Answer.create(name: '1984', question_id: question2.id, correct: false)
answer5c = Answer.create(name: '1990', question_id: question2.id, correct: false)

# #*Q:3
answer6 = Answer.create(name: '</script>', question_id: question3.id, correct: true)
answer7 = Answer.create(name: '<js>', question_id: question3.id, correct: false)
answer8 = Answer.create(name: '<javascript>', question_id: question3.id, correct: false)

# #*Q:4
answer9 = Answer.create(name: 'The <head> section', question_id: question4.id, correct: false)
answer10 = Answer.create(name: 'Both the <head> and the <body> section are correct', question_id: question4.id, correct: true)
answer11 = Answer.create(name: 'Anywhere', question_id: question4.id, correct: false)

# #*Q:5
answer12 = Answer.create(name: '<!--This is a comment-->', question_id: question5.id, correct: false)
answer13 = Answer.create(name: 'This is a comment', question_id: question5.id, correct: false)
answer14 = Answer.create(name: '//This is a comment', question_id: question5.id, correct: true)
answer15 = Answer.create(name: '#This is a comment', question_id: question5.id, correct: false)

# #*Q:6
answer16 = Answer.create(name: 'An object that represents two values, either "true" or "false".', question_id: question6.id, correct: false)
answer17 = Answer.create(name: 'A user click event on the left button of their mouse.', question_id: question6.id, correct: false)
answer18 = Answer.create(name: 'A named container of values that can be refered to.', question_id: question6.id, correct: true)
answer19 = Answer.create(name: 'A place where the big wind blows...', question_id: question6.id, correct: false)

# #*Q:7
answer20 = Answer.create(name: 'YES', question_id: question7.id, correct: false)
answer21 = Answer.create(name: 'NO', question_id: question7.id, correct: true)

# #*Q:8
answer22 = Answer.create(name: 'You should not use any of the JavaScript reserved keyword as variable name.', question_id: question8.id, correct: false)
answer23 = Answer.create(name: 'JavaScript variable names should not start with a numeral (0-9).', question_id: question8.id, correct: false)
answer24 = Answer.create(name: 'Both of above', question_id: question8.id, correct: true)
answer25 = Answer.create(name: 'None', question_id: question8.id, correct: false)

# Q:9 
answer26 = Answer.create(name: 'True', question_id: question9.id, correct: false)
answer27 = Answer.create(name: 'False', question_id: question9.id, correct: true)

# Q:10 
answer28 = Answer.create(name: 'True', question_id: question10.id, correct: true)
answer29 = Answer.create(name: 'False', question_id: question10.id, correct: false)

# #*Q:11
answer30 = Answer.create(name: 'if i = 5  ', question_id: question11.id, correct: false)
answer31 = Answer.create(name: 'if (i == 5)  ', question_id: question11.id, correct: true)
answer32 = Answer.create(name: 'if i == 5 then', question_id: question11.id, correct: false)
answer33 = Answer.create(name: 'if i = 5 then', question_id: question11.id, correct: false)

# #*Q:12
answer34 = Answer.create(name: '==', question_id: question12.id, correct: true)
answer35 = Answer.create(name: '<', question_id: question12.id, correct: false)
answer37 = Answer.create(name: '>', question_id: question12.id, correct: false)
answer38 = Answer.create(name: '>=', question_id: question12.id, correct: false)

# #*Q:13
answer39 = Answer.create(name: 'true', question_id: question13.id, correct: true)
answer40 = Answer.create(name: 'false', question_id: question13.id, correct: false)

# *Q:14
answer41 = Answer.create(name: 'if (10 > 5) {
                                  var outcome = "if block";
                                }', question_id: question14.id, correct: true)
answer42 = Answer.create(name: 'if ("cat" === "dog") { 
                                  return "true"
                                else
                                  return "false"}', question_id: question14.id, correct: true)
answer43 = Answer.create(name: 'const fruits = [Apple, Orange, Melon, Kiwi]', question_id: question14.id, correct: true)
answer44 = Answer.create(name: 'function getFee(isMember) {
                                return (isMember ? "$2.00" : "$10.00");
                               }
                               console.log(getFee(true));', question_id: question14.id, correct: true)

#*Q:15
answer45 = Answer.create(name: 'True', question_id: question15.id, correct: true)
answer46 = Answer.create(name: 'False', question_id: question15.id, correct: false)

#*Q:16
answer47 = Answer.create(name: 'True', question_id: question16.id, correct: true)
answer48 = Answer.create(name: 'False', question_id: question16.id, correct: false)

#*Q:17
answer49 = Answer.create(name: 'Yes', question_id: question17.id, correct: true)
answer50 = Answer.create(name: 'No', question_id: question17.id, correct: false)


#*Q:18
answer51 = Answer.create(name: 'Letters', question_id: question18.id, correct: false)
answer52 = Answer.create(name: 'Include a number', question_id: question18.id, correct: false)
answer53 = Answer.create(name: 'Include an underscore', question_id: question18.id, correct: false)
answer54 = Answer.create(name: 'A reserved word in Javascript', question_id: question18.id, correct: true)

#*Q:19
answer55 = Answer.create(name: 'call myFunction()', question_id: question19.id, correct: false)
answer56 = Answer.create(name: 'myFunction()', question_id: question19.id, correct: true)
answer57 = Answer.create(name: 'call function myFunction', question_id: question19.id, correct: false)
answer58 = Answer.create(name: 'call.myFunction()', question_id: question19.id, correct: false)

#*Q:20
answer59 = Answer.create(name: 'The scope of the function', question_id: question20.id, correct: true)
answer60 = Answer.create(name: 'It is aconditional in the function.', question_id: question20.id, correct: false)
answer61 = Answer.create(name: 'It is a property of the function.', question_id: question20.id, correct: true)
answer62 = Answer.create(name: 'It refers to the return value.', question_id: question20.id, correct: false)

#*Q:21
answer63 = Answer.create(name: 'Undefined', question_id: question21.id, correct: true)
answer64 = Answer.create(name: 'Object', question_id: question21.id, correct: false)
answer65 = Answer.create(name: 'Number', question_id: question21.id, correct: false)
answer66 = Answer.create(name: 'Function', question_id: question21.id, correct: false)

#*Q:22
answer67 = Answer.create(name: 'True', question_id: question22.id, correct: true)
answer68 = Answer.create(name: 'False', question_id: question22.id, correct: false)
answer69 = Answer.create(name: 'Reference Error', question22.id, correct: false)
answer70 = Answer.create(name: 'Null', question_id: question22.id, correct: false)

#*Q:23
answer71 = Answer.create(name: 'Nothing', question_id: question23.id, correct: false)
answer72 = Answer.create(name: 'alert ‘>1’', question_id: question23.id, correct: false)
answer73 = Answer.create(name: 'alert ‘>undefined’', question23.id, correct: false)
answer74 = Answer.create(name: 'alert ‘>2’', question_id: question23.id, correct: true)

#*Q:24
answer75 = Answer.create(name: '3', question_id: question24.id, correct: false)
answer76 = Answer.create(name: '8', question_id: question24.id, correct: true)
answer77 = Answer.create(name: 'NaN', question_id: question24.id, correct: false)
answer78 = Answer.create(name: 'Null', question_id: question24.id, correct: false)

#*Q:25
answer79 = Answer.create(name: 'Inside', question_id: question25.id, correct: false)
answer80 = Answer.create(name: 'Outside', question_id: question25.id, correct: false)
answer81 = Answer.create(name: 'Undefined', question_id: question25.id, correct: true)
answer82 = Answer.create(name: 'Null', question_id: question25.id, correct: false)