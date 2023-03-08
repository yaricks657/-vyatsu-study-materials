 import './styles.css'
 import './assets/css/season.css'
import './assets/js/main'
import {createModal, isValid,regis, login} from "./utils"
import {Question} from "./assets/js/questions"
 //import './index.html'
// import html from "./index.html";

const form = document.getElementById('form')
 const enter = document.getElementById('enter')
 const input = form.querySelector('#question-input')
const submitBtn = form.querySelector('#submit')

     window.addEventListener('load',Question.renderList)
form.addEventListener('submit', submitFormHandler)
input.addEventListener('input',()=>{
    submitBtn.disabled = !isValid(input.value)
})
 enter.addEventListener('click',openModal)

function submitFormHandler(event){
event.preventDefault()
    console.log(input.value)

    if (isValid(input.value)){
        const question = {
            text: input.value.trim(),
            date: new Date().toJSON()
        }
        submitBtn.disabled = true;
        //Async request to server to save question
        Question.create(question).then(() => {
            input.value = ''
            input.className = ''
            submitBtn.disabled = false
        })
        // console.log("question",question)
    }
}

function openModal(){
    createModal('Авторизация','<h1></h1>')
    document.getElementById('govno').addEventListener('click',()=>login())
    document.getElementById('button_click').addEventListener('click',()=>regis())
}


 // document.getElementById('button_click').addEventListener('click',()=>regis())
