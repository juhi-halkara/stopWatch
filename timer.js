let seconds = 0;
let minutes = 0;
let hours = 0;
let displayseconds = 0;
let displayminutes = 0;
let displayhours = 0;
let interval = null;

function stopWatch(){
	//console.log("hello");
	seconds++;

	if(seconds / 60 === 1){
		seconds = 0 ;
		minutes++;

	if (minutes /60 === 1) {
		minutes = 0 ;
		hours++;
	}

	}

	if(seconds < 10){
		displayseconds = "0"+seconds.toString();
	}
	else{
		displayseconds = seconds;
	}

	if(minutes < 10){
		displayminutes = "0"+ minutes.toString();
	}
	else{
		displayminutes = seconds;
	}

	if(hours < 10){
		displayhours = "0"+ hours.toString();
	}
	else{
		displayhours = hours;
	}
	document.getElementById("display").innerHTML = displayhours + ":" + displayminutes + ":" + displayseconds;
	document.getElementById("disp").innerHTML = displayhours + ":" + displayminutes + ":" + displayseconds;
}
function start(){
	interval = window.setInterval(stopWatch,1000);
}
function stop(){
 window.clearInterval(interval);
}
function reset(){
	window.clearInterval(interval);
	seconds = 0;
	minutes = 0;
	hours = 0;
	document.getElementById("display").innerHTML = "00:00:00";
	//document.getElementById(start).innerHTML = "start";
	document.getElementById("disp").innerHTML = "00:00:00.";
}
var today = new Date();
var dd = today.getDate();

var mm = today.getMonth()+1; 
var yyyy = today.getFullYear();
if(dd<10) 
{
    dd='0'+dd;
} 

if(mm<10) 
{
    mm='0'+mm;
} 
today = yyyy+'/'+mm+'/'+dd;
document.getElementById('date').innerHTML=today;
console.log(today);