const usp = new URLSearchParams(window.location.search);
const resultsList = document.getElementById("result-plate");

// Array Remove - By John Resig (MIT Licensed)
Array.prototype.remove = function(from, to) {
    var rest = this.slice((to || from) + 1 || this.length);
    this.length = from < 0 ? this.length + from : from;
    return this.push.apply(this, rest);
  };

document.addEventListener('DOMContentLoaded', function() {
    var canvas = document.getElementById("plateCanvas");
    var ctx = canvas.getContext("2d");
    ctx.fillStyle = "black";
    //ctx.fillRect(0, 0, 100, 100);
    drawText(ctx);
});

let plate = [];
for (let i = 1; i < 8; i++){
    plate.push(usp.get("plateSign"+i));
    createPlateString(usp.get("plateSign"+i), i);
}

function createPlateString(text, i){
    text = text.toUpperCase();
    console.log(text);
    drawLetter(text, i);
}

//plate.remove(0);

resultsList.append(plate);

function drawText(ctx){
    ctx.font = '48px sans-serif';
    ctx.textAlign = "center";
    ctx.fillText("Номер моей грузинской машины", 400, 100);    
}

function drawLetter(letter, i){
    var canvas = document.getElementById("plateCanvas");
    var ctx = canvas.getContext("2d");
    ctx.font = '88px sans-serif';
    ctx.fillText(letter, 80*i, 250);
}

const btnDisplay = document.getElementById("btnDisplay");
const btnDownload = document.getElementById("btnDownload");
const myCanvas = document.getElementById("plateCanvas");
const imgConverted = document.getElementById("createdPlate");

btnDisplay.addEventListener("click", function(){
    const dataURI = myCanvas.toDataURL();
    imgConverted.src = dataURI;
})

btnDownload.addEventListener("click", function(){
    if (window.navigator.msSaveBlob){
        window.navigator.msSaveBlob(myCanvas.msToBlob(), "myplate.png")
    } else {
        const a = document.createElement("a");
        document.body.appendChild(a);
        a.href = myCanvas.toDataURL();
        a.download = "myplate.png";
        a.click();
        document.body.removeChild(a);
    }
})