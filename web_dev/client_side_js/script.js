console.log("test");
function reveal() {
  var p = document.getElementById("pizz");
  p.style.visibility="visible";
}

var p = document.getElementById("pizz");
p.style.visibility='hidden';

document.addEventListener("click", reveal);