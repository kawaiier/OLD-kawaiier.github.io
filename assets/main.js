var quotesContainer = document.getElementById("quotes");
var ourRequest = new XMLHttpRequest();

ourRequest.open('GET', 'assets/quotes.json');
ourRequest.onload = function() {
  var ourData = JSON.parse(ourRequest.responseText);
  renderHTML(ourData);
};
ourRequest.send();

function renderHTML(data) {
  var htmlString = "<em>Цитата дня. ";

  var randnum1 = Math.floor((Math.random() * data.length) + 0);
  var randnum2 = Math.floor((Math.random() * data.length) + 0);

  htmlString += data[randnum1].name + ": «" + data[randnum2].qoute + "».";
  quotesContainer.insertAdjacentHTML('beforeend', htmlString + "</em>");
};
