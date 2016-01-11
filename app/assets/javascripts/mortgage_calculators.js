(function () {
  "use strict";

  angular.module("app").controller("")
})

$( document ).ready(function() {

  $( "#calculate" ).click(function() {
    var loanprincipal = document.getElementById("loansize").value;
    var months = document.getElementById("years").value * 12;
    var interest = document.getElementById("interest").value / 1200;
    console.log(loanprincipal);

    document.getElementById('monthlyPayment').innerHTML = 'Your monthly payment will be ' + '$' + (loanprincipal * interest / (1 - (Math.pow(1/(1 + interest), months)))).toFixed(2)+'.';
  
  });
});