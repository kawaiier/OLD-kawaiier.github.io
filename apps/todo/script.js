var button = document.getElementById("enter");
var buttonReady = document.getElementById("ready");
var input = document.getElementById("userinput");
var ul = document.querySelector("ul");
var p = document.getElementById("symbolsLeft");

var minLength = 23;
var enterKeyCode = 13;

var totalItems = 0;
var maxItems = 5;

var currentItemID = 0;

var li;
var list;
var buttonDel = null;

var editable = true;

window.onload = startFunction();

function startFunction(){
    input.value = "";
    input.focus();
}

function addSymbolsLeft(){
    var text = minLength - input.value.length;
    if (text > 0) {
        p.textContent = `Осталось ввести не менее ${text} символов`;
    } else {
        p.textContent = `Готово! Можно дообавлять задачу`;
    }
    // p.appendChild(text.toString());
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
input.addEventListener("input", addSymbolsLeft)
