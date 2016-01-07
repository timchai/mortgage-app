var loanprincipal = document.mortgagecalc.loan.value;
var months = document.mortgagecalc.years.value * 12;
var interest = document.mortgagecalc.rate.value / 1200;

function myPayment() {
  document.getElementById('monthlyPayment').innerHTML = 'Your monthly payment will be ' + '$' + (loanprincipal * interest / (1 - (Math.pow(1/(1 + interest), months)))).toFixed(2)+'.';
}