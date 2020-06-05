const _button = document.getElementById("enter");
const buttonReady = document.getElementById("ready");
const _input = document.getElementById("userinput");
const _ul = document.querySelector("ul");

const minLength = 23;
const enterKeyCode = 13;

let totalItems = 0;
const maxItems = 5;

let currentItemID = 0;

let _li;
let list;
let buttonDel = null;

let editable = true;

window.onload = startFunction;

function startFunction(){
    _input.value = "";
    _input.focus();
}

function inputLength(){
    return _input.value.length;
}

function addItemAfterClick(){
    if (inputLength() > minLength){
        createItem();
    }
}

function addItemAfterEnter(event){
    if (inputLength() > minLength && event.keyCode === enterKeyCode && editable){
        createItem();
    }
}

function createItem(){
    if (totalItems < maxItems){
        _li = document.createElement("li");
        _li.setAttribute("id", currentItemID);
        _li.setAttribute("onClick", "toggleDone(this.id)");
        _li.appendChild(document.createTextNode(_input.value));
        _ul.appendChild(_li);
        createDeleteButton(currentItemID);
        list = document.querySelectorAll("li");
        _input.value = "";
        _input.focus();
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
    _li.appendChild(buttonDel);
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
_button.addEventListener("click", addItemAfterClick)
buttonReady.addEventListener("click", finishList)
input.addEventListener("keypress", addItemAfterEnter)
