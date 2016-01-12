(function () {
  "use strict";

  angular.module("app").controller("")
})()

$( document ).ready(function() {

  function calculateMonthlyPayments(principal, months, interest) {
    var result = (principal * interest) / (1 - Math.pow((1/(1 + interest)),months));
    return result.toFixed(2);
  };

  $( "#calculate" ).click(function() {
    // get values from form and calculate monthly payments
    var loanprincipal = document.getElementById("loansize").value,
        months = document.getElementById("years").value * 12,
        interest = document.getElementById("interest").value / 1200,
        monthlyPayment = calculateMonthlyPayments(loanprincipal, months, interest);
    // update page with payment    
    document.getElementById('monthlyPayment').innerHTML = 'Your monthly payment will be ' + '$' + monthlyPayment +'.';
  
  });
});