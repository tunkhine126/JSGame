// global variables
// const answer_ul = document.getElementById('answer_choices')
let all_topics = []
let all_questions = [];
let question_index = 0
let your_points = 0
let total_points=0
let width = 0;



document.addEventListener('DOMContentLoaded', ()=>{
  document.addEventListener('click', handleClickEvent)
  const form = document.querySelector('.form_of_login')
  form.addEventListener('submit', loginEvent)
  
})

function handleClickEvent(e) {
  // console.log(e.target)
  if(e.target.className === 'answer_choice button') checkAnswer(e.target)
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
   
    showTopic(all_topics.shift())
  })
  .then(e.target.reset())
}


function showTopic(topic){
  if (all_topics.length != 0){
    // const total_score = document.getElementById("total_score")
    // const your_score = document.getElementById("your_score")
    // total_score.innerText += total_points
    // your_score.innerText += your_points
  // console.log(topic)
  const topics_ul = document.getElementById("topic_names")
  const name = topic.attributes.name
  
  topics_ul.innerHTML += `<button class="topic" data-id=${topic.id}> ${name}</button></br>`
  }
  else{
    const total_score = document.getElementById("total_score")
    const your_score = document.getElementById("your_score")
    total_score.innerText += total_points
    your_score.innerText += your_points
  }
}


function checkAnswer(choice_li) {
  if(choice_li.dataset.correct == 'true'){
    alert('CORRECT!')
    // const div = document.querySelector(".column2")
    // div.innerHTML += `<p> correct </p>` 
    your_points++
  }
  else{
    alert("THAT AIN'T IT, CHIEF.")
  }
    total_points++
    displayQuestion()

}
  

  function getQuestions(e){
  // question_index = 0
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
    // console.log(all_questions)
    const div_que = document.getElementById("questions")

    if (all_questions.length != 0 ){
      // let que = all_questions[question_index]
      let que = all_questions.shift()
      // console.log(que)
      // console.log(que.id)
      div_que.innerHTML = `
      Questions:
      <li id=${que.id}> ${que.attributes.name} </li><br/>
      Answer choices:
      `
  
      // console.log(que)
      showAnswerChoices(que.id)
    }else{
      frame()
      div_que.innerText =''
      div_que.nextElementSibling.firstElementChild.innerText= ''
      showTopic(all_topics.shift())
    }
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
          li.className = 'answer_choice button'
          li.innerText = choice.attributes.name
          answer_ul.appendChild(li)
          // answer_ul.innerHTML += `<li data-correct="${choice.attributes.correct}" class="answer_choice">${choice.attributes.name}</li>`
          
        }
      })
    })
  }

   
    function frame() {
      
      if (width >= 100) {
      } else {
        const elem = document.getElementById("myBar")
        width = width + 20; 
        elem.style.width = width + '%'; 
      }
    
  }

// function clearColumn(){
  
// }