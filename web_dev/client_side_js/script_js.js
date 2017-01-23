
var bootspic = document.getElementById("moonboots");
bootspic.style.border = "10px solid blue"

function addRedBorder() {
	event.target.style.border = "10px dashed red";
}

bootspic.addEventListener("click",addRedBorder)
