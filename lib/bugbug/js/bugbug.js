function bugugToogle(){
	var content = document.getElementsByClassName("bugug-content")[0];
	var bugug =  document.getElementsByClassName("bugug")[0];
	if(content.style.display == "none" || content.style.display == "") {
		content.style.display = "block";
		//bugug.style.height = "50%";
	} else {
		content.style.display = "none";
		//bugug.style.height = "auto";
	}
}	