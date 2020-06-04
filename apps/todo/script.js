var button = document.getElementById("enter");
var buttonReady = document.getElementById("ready");
var input = document.getElementById("userinput");
var ul = document.querySelector("ul");

const minLength = 1;
const enterKeyCode = 13;

var totalItems = 0;
const maxItems = 5;

var currentItemID = 0;

var li;
var list;
var buttonDel = null;

var editable = true;

window.onload = startFunction;

function startFunction(){
    input.value = "";
    input.focus();
}

function inputLength(){
    return input.value.length;
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
    var text = `deleteItem(${liID})`;
    buttonDel.appendChild(document.createTextNode("X"));
    buttonDel.setAttribute("onClick", text);
    li.appendChild(buttonDel);
    buttonDel.addEventListener("click", deleteItem)
}

function deleteItem(id){
    document.getElementById(id).outerHTML = "";
    totalItems--;
    // li[id].outerHTML = "";
}

function toggleDone(id){
    document.getElementById(id).classList.toggle("done");
    // console.log("I'd like to toggle li with id of", id);
    // list[id].classList.toggle("done");
}

function listGotFull(){
    // input.setAttribute("readonly", "readonly");
    alert("Создать больше пяти задач нельзя. Удали что-нибудь");
}

function finishList(){
    var btns = document.querySelectorAll("button");
    for (var btn = 0; btn < btns.length; btn++){
        btns[btn].setAttribute("disabled", "true");
    }
    editable = false;
    // btns.setAttribute("disabled", "true");
}

button.addEventListener("click", addItemAfterClick)
buttonReady.addEventListener("click", finishList)

// buttonDel.addEventListener("click", deleteItem)

input.addEventListener("keypress", addItemAfterEnter)
