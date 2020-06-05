const button = document.getElementById("enter");
const buttonReady = document.getElementById("ready");
const input = document.getElementById("userinput");
const ul = document.querySelector("ul");

const minLength = 23;
const enterKeyCode = 13;

let totalItems = 0;
const maxItems = 5;

let currentItemID = 0;

let li;
let list;
let buttonDel = null;

let editable = true;

window.onload = startFunction;

function startFunction(){
    input.value = "";
    input.focus();
}

function inputLength(){
    return input.value.length;
}

function addItemAfterClick(){
    if (inputLength() > minLength && editable === true){
        createItem();
    }
}

function addItemAfterEnter(event){
    if (inputLength() > minLength && event.keyCode === enterKeyCode && editable === true){
        createItem();
    }
}

function createItem(){
    if (totalItems < maxItems){
        li = document.createElement("li");
        li.setAttribute("id", currentItemID);
        li.setAttribute("onClick", "toggleDone(this.id)");
        li.appendChild(document.createTextNode(input.value));
        ul.appendChild(li);
        createDeleteButton(currentItemID);
        list = document.querySelectorAll("li");
        input.value = "";
        input.focus();
        currentItemID++;
        totalItems++;
    } else {
        listGotFull();
    }
}

function createDeleteButton(liID){
    buttonDel = document.createElement("button");
    let text = `deleteItem(${liID})`;
    buttonDel.appendChild(document.createTextNode("X"));
    buttonDel.setAttribute("onClick", text);
    li.appendChild(buttonDel);
    buttonDel.addEventListener("click", deleteItem);
}

function deleteItem(id){
    document.getElementById(id).outerHTML = "";
    totalItems--;
}

function toggleDone(id){
    document.getElementById(id).classList.toggle("done");
}

function listGotFull(){
    alert("Создать больше пяти задач нельзя. Удали что-нибудь");
}

function finishList(){
    let btns = document.querySelectorAll("button");
    for (let btn = 0; btn < btns.length; btn++) {
        btns[btn].setAttribute("disabled", "true");
    }
    editable = false;
}

// Input Listeners
button.addEventListener("click", addItemAfterClick)
buttonReady.addEventListener("click", finishList)
input.addEventListener("keypress", addItemAfterEnter)
