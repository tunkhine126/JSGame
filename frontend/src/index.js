// global variables
// const answer_ul = document.getElementById('answer_choices')
let all_topics = []
let all_questions = [];
let question_index = 0


document.addEventListener('DOMContentLoaded', ()=>{
  document.addEventListener('click', handleClickEvent)
  const form = document.querySelector('.form_of_login')
  form.addEventListener('submit', loginEvent)
  // const score= 0;
  // const question_num=0;
  // console.log(form)
})

function handleClickEvent(e) {
  // console.log(e.target)
  if(e.target.className === 'answer_choice') checkAnswer(e.target)
  else if(e.target.className === 'topic') getQuestions(e)
}

function loginEvent(e){
  e.preventDefault()
  const username = e.target.username.value
  const header = document.getElementById("welcome")
  header.innerText = `Welcome ${username}`

  fetch("http://localhost:3000/topics/")
  .then(res => res.json())
  .then(topics => {
    topics.data.forEach(topic => all_topics.push(topic) )
    showTopic(all_topics[0])
  })
  .then(e.target.reset())
}

function showTopic(topic){
  const topics_ul = document.getElementById("topic_names")
  const name = topic.attributes.name

  topics_ul.innerHTML += `<li class="topic" data-id=${topic.id}>${name}</li>`
}

function checkAnswer(choice_li) {
  if(choice_li.dataset.correct == 'true')
    alert('CORRECT!')
  else
    alert("THAT AIN'T IT, CHIEF.")

    question_index++
    displayQuestion()
}
  
  function getQuestions(e){
  question_index = 0
   
    const id = e.target.dataset.id
    fetch("http://localhost:3000/questions/")
    .then(res => res.json())
    .then(questions => {
      questions.data.forEach(q => {
        if(q.attributes.topic_id == id)
          all_questions.push(q)
      });
      displayQuestion()
    })
    
  }

  function displayQuestion() {
    const div_que = document.getElementById("questions")
    let que = all_questions[question_index]

    div_que.innerHTML = `
    <li id=${que.id}> ${que.attributes.name} </li>`

    console.log(que)
    showAnswerChoices(que.id)
  }


  function showAnswerChoices(id) {
    const answer_ul = document.getElementById('answer_choices')
    answer_ul.innerHTML = ''

    fetch("http://localhost:3000/answers/")
    .then(resp => resp.json())
    .then(answers => {
      answers.data.forEach(choice =>{
        if(choice.attributes.question_id == id) {
          let li = document.createElement('li')
          li.dataset.correct = choice.attributes.correct
          li.className = 'answer_choice'
          li.innerText = choice.attributes.name
          answer_ul.appendChild(li)
          // answer_ul.innerHTML += `<li data-correct="${choice.attributes.correct}" class="answer_choice">${choice.attributes.name}</li>`
        }
      })
    })
  }
  
  

  

