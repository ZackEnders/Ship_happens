// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
window.onload = function(){

var cost_button = document.getElementById('cost_button')
cost_button.addEventListener('click', calcCost)

function calcCost(){
	var containers = document.getElementById('containers').value
	var rate = document.getElementById('rate').value
	var cost = document.getElementById('cost')
	var job_cost = document.getElementById('job_cost')
	total = containers * rate
	cost.innerHTML = total
	job_cost.value = total
	job_amount_of_c.value = containers

}
}
