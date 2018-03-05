// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

function calcCost(){
	var amountValue = document.getElementById('job_amount_of_c').value
	var jobCost = document.getElementById('job_cost')
	jobCost.innerHTML = amountValue
}

var button = document.getElementById('cost_button')
button.addEventListener('click', calcCost)