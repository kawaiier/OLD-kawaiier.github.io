var currentdate = new Date(); 
var datetime = "Last Sync: " + currentdate.getDate() + "/"
                + (currentdate.getMonth()+1)  + "/" 
                + currentdate.getFullYear() + " @ "  
                + currentdate.getHours() + ":"  
                + currentdate.getMinutes() + ":" 
                + currentdate.getSeconds();
console.log(datetime);

const usp = new URLSearchParams(window.location.search);
const homeList = document.getElementById("home");

const floorWindowsAllowed = 10;
const floorsAllowed = 30;
let totalWindows = 0;

let floorWindows = usp.get("floorWindows");
let floors = usp.get("floors");

let mybr = document.createElement('br');

function max_limit_check() {
    if (floorWindows > floorWindowsAllowed) {
        floorWindows = floorWindowsAllowed;
    }

    if (floors > floorsAllowed) {
        floors = floorsAllowed;
    }
}
max_limit_check();

let floorWindowsCache = localStorage.getItem("floorWindowsCache");
let floorsCache = localStorage.getItem("floorsCache");

if (floorWindowsCache == null){
  localStorage.setItem("floorWindowsCache", floorWindows);
}
if (floorsCache == null){
  localStorage.setItem("floorsCache", floors);
}

// if (localStorage.getItem("floorWindowsCache") == null) {
//     localStorage.setItem("floorWindowsCache", floorWindows);
// }
// if (localStorage.getItem("floorsCache") == null) {
//     localStorage.setItem("floorsCache", floors);
// }

totalWindows = floorWindows * floors;

// if (floorWindowsCache == null || floorsCache == null){
//   totalWindows = floorWindows * floors;  
//   localStorage.setItem("totalWindows", totalWindows);
// } else {
//   totalWindows = floorWindows * floors;
// }

homeList.append(`Всего в доме ${totalWindows} окошек!`);
homeList.innerHTML += "<br>";
homeList.innerHTML += "<br>";

function generate_table() {
    // get the reference for the body
    var body = document.getElementById("home");

    // creates a <table> element and a <tbody> element
    var tbl = document.createElement("table");
    var tblBody = document.createElement("tbody");

    // creating all cells
    for (var i = 0; i < floors; i++) {
        // creates a table row
        var row = document.createElement("tr");

        for (var j = 0; j < floorWindows; j++) {
            // Create a <td> element and a text node, make the text
            // node the contents of the <td>, and put the <td> at
            // the end of the table row
            var cell = document.createElement("td");
            cell.classList.add("checkbox-style");
            var checkbox = document.createElement('input');
            checkbox.type = "checkbox";
            checkbox.name = "flat";
            checkbox.value = 1;
            checkbox.label = "";
            checkbox.id = j;
            //var cellText = document.createTextNode("cell in row "+i+", column "+j);
            //cell.appendChild(cellText);
            cell.appendChild(checkbox);
            row.appendChild(cell);
        }

        // add the row to the end of the table body
        tblBody.appendChild(row);
    }

    // put the <tbody> in the <table>
    tbl.appendChild(tblBody);
    // appends <table> into <body>
    body.appendChild(tbl);
    // sets the border attribute of tbl to 2;
    tbl.setAttribute("border", "2");
}

if (floors != null && floorWindows != null) {
    generate_table();
} else {
    floors = localStorage.getItem("floorsCache");
    floorWindows = localStorage.getItem("floorWindowsCache");
    generate_table();
}