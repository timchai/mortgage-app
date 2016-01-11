(function () {
  "use strict";

  angular.module("app").controller("")
})

$( document ).ready(function() {

// $("#approval").click(function() {
function approval(income, ficoScore, bankruptcy) {
  var income = document.getElementById("income").value;
  var ficoScore = document.getElementById("ficoScore").value;
  var bankruptcy = document.getElementById("bankruptcy").value;
  if (bankruptcy = false || ficoScore < 500); {
    {alert("I'm sorry, your loan application is denied")};
  }
  else
    {alert("You're approved")};

  document.getElementById('terms').innerHTML = 'Test';
}}