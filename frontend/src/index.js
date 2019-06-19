// global variables
const answer_ol = document.getElementById('answer_choices')
let current_question_index = 0
const answer_ul = document.getElementById('answer_choices')

document.addEventListener('DOMContentLoaded', ()=>{
  document.addEventListener('click', handleClickEvent)
  const form = document.querySelector('.form_of_login')
  const score= 0;
  const question_num=0;

  form.addEventListener('submit', loginEvent)
// console.log(form)

})

function handleClickEvent(e) {
  // console.log(e.target)

  if(e.target.className === 'answer_choice') checkAnswer(e.target)
}

function checkAnswer(choice_li) {
  if(choice_li.dataset.correct === 'true')
    alert('CORRECT!')
  else
    alert("THAT AIN'T IT, CHIEF.")
}

function loginEvent(e){
  e.preventDefault()
  const username = e.target.username.value
  const header = document.getElementById("welcome")
  // console.log(header)
  header.innerText = `Welcome ${username}`

  fetch("http://localhost:3000/topics/")
  .then(res => res.json())
  .then(topics => {
    showTopic(topics)
  })


  function showTopic(topics){
    const topic_name = document.getElementById("topic_names")
    const name = topics.data[0].attributes.name
    // console.log(topics.data[0])
    topic_name.innerHTML += `<li id= "topic1" data-id=${topics.data[0].id}> ${name}</li>`
    
    const li = document.getElementById('topic1')
    li.addEventListener('click',showQuestion)
  }

  function showQuestion(e){
    e.preventDefault()
   
    const id = e.target.dataset.id
    const que_list = fetch("http://localhost:3000/questions/")
    .then(res => res.json())
    .then(questions => {
      // console.log(questions)
      let all_questions;
      all_questions= [];
      questions.data.forEach(que => {
        // console.log(que)
        if (que.attributes.topic_id === parseInt(id)){
          all_questions.push(que)
        }
      });
      // console.log(all_questions)
      return all_questions
    })

    que_list.then(data => {
      console.log('DATA = ',data)
      displayQuestion(data)
    })
  
  }

  

  function displayQuestion(all_questions){
    // console.log(all_questions)
    // console.log(all_questions.length)
    const div_que = document.getElementById("questions")

    let que = all_questions[current_question_index]
    // const choices = getChoices(que)


    div_que.innerHTML = `
    <li id=${que.id}> ${que.attributes.name} </li>
    `

    showAnswerChoices(que.id)

  }

  function showAnswerChoices(id) {
    const answer_ul = document.getElementById('answer_choices')

    answer_ul.innerHTML = ''
    fetch("http://localhost:3000/answers/")
    .then(resp => resp.json())
    .then(answers => {
      answer_ul.innerHTML = ''
      answers.data.forEach(choice =>{
        if(choice.attributes.question_id == id) {
          console.log('MATCH = ',id)
          answer_ul.innerHTML += `<li id=${choice.id} data-correct="${choice.attributes.correct}" class="answer_choice">${choice.attributes.name}</li>`
        }
      })
    })
  }
  
  

  

}