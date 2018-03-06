// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
window.onload = function(){

var containers = document.getElementById('containers').value
var rate = document.getElementById('rate').value
var cost_button = document.getElementById('cost_button')
cost_button.addEventListener('click', calcCost)

function calcCost(){
	var cost = document.getElementById('cost')
	cost.innerHTML = containers * rate

}
}
