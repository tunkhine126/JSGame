

document.addEventListener('DOMContentLoaded', () =>{
  const form = document.querySelector('.form_of_login')
  const score= 0;
  const question_num=0;

  form.addEventListener('submit', loginEvent)
// console.log(form)

})


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
      let all_questions;
      all_questions= [];
      questions.data.forEach(que => {
        if (que.attributes.topic_id === parseInt(id)){
          all_questions.push(que)
        }
      });
      return all_questions
    })

    que_list.then(data => {
      displayQuestion(data)
    })
  
  }

  function displayQuestion(all_questions){
    // console.log(all_questions)
    // console.log(all_questions.length)

  const div_que = document.getElementById("questions")
  for(i=0; i < all_questions.length; i++){

    let que = all_questions[i]
    const choices = getChoices(que)


    div_que.innerHTML += `
    <li id=${que.id}> ${que.attributes.name} </li>
    `
    choices.then(data => {
      console.log(data)
      const que_name = document.getElementById("")
      data.forEach(ele => {
      div_que.innerHTML +=
      `<li> ${ele.attributes.name}</li>`
      })
    })
        
    // choices.then(data => {
    //   data.forEach(ele => {
    //   div_que.innerHTML += `
    //   <li>${data.attributes.name} <li>`
    // })

    }
  }

  function getChoices(que){
    const temp = fetch("http://localhost:3000/answers/")
    .then(res=> res.json())
    .then(options => {
      let choices = [];
      options.data.forEach(ele => {
        if (parseInt(ele.attributes.question_id) === parseInt(que.id)){
          choices.push(ele)
        }
      })
      return choices
    })
    return temp
  }

}