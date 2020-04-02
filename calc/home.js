const homeList = document.getElementById("home");
const usp = new URLSearchParams(window.location.search);

var mybr = document.createElement('br');

const floorWindows = usp.get("floorWindows");
const floors = usp.get("floors");
const totalWindows = floorWindows * floors;
localStorage.setItem("totalWindows", totalWindows);
localStorage.setItem("floorWindowsCache", floorWindows);
localStorage.setItem("floorsCached", floors);
homeList.append(`Всего в доме ${totalWindows} окон!`);
homeList.innerHTML += "<br>";
homeList.innerHTML += "<br>";

//totalFlatsList.append(totalWindows);

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

  if (floors != null){
    generate_table();
  } else {
    floors = localStorage.getItem("floorsCached");
    floorWindows = localStorage.getItem("floorWindowsCache");
    generate_table();
  }
  