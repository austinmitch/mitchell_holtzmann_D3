//javascript doc

(function() {
	"use strict";
	console.log("SEAF FIRED");

	//variables
	var button = document.querySelector("#dropDown");
	var menu = document.querySelector("#dataMenu");

	//functions
	function dropDown() {
		button.classList.toggle("dropDownOpen");
		menu.classList.toggle("menuOpen");
	}

	//listeners
	button.addEventListener("click", dropDown, false);

})();
