const resultsList = document.getElementById("results");
const usp = new URLSearchParams(window.location.search);

const totalWindows = usp.get("totalWindows");
const litWindows = usp.get("litWindows");
const unlitWindows = totalWindows - litWindows;
const unlitWindowsPercentage = Math.round(litWindows / totalWindows * 100);

if (unlitWindowsPercentage == 100){
    resultsList.append(`Все окошки горят! :)`);
} else if (unlitWindowsPercentage == 0) {
    resultsList.append(`Ни одно окошко не горит :'(`);
} else {
    resultsList.append(`Не горит ${unlitWindows} окошек, то есть ${unlitWindowsPercentage}%`);
};


// for (const [key, value] of usp){
//     resultsList.append(`${key} => ${value}`);
//     resultsList.append(document.createElement("br"));
// }
