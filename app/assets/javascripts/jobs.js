// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

//this script powers a calculator to determine the cost of the job.
// the user's rate is determined by their settings. user enters the number of containers.
//	cost of job is determined by multiplying rate * containers
// the cost of job and the number of containers are then popped into the below job creation form

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

