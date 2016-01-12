(function () {
  "use strict";
  console.log("did i run")

  angular.module("app").controller("")
})()

$( document ).ready(function() {

function checkApproval(income, ficoScore, bankruptcy) {
  if (bankruptcy === "yes" || ficoScore < 500) {
    return false;
  }
  return true;
}

$('#approval').click(function(){
    var income = document.getElementById("income").value,
        ficoScore = document.getElementById("ficoScore").value,
        bankruptcy = document.getElementById("bankruptcy").value,
        msg = ""; 

    var approved = checkApproval(income, ficoScore, bankruptcy);
    
    if (approved) {
      msg = "You have been approved for a maximum loan amount of $";
    } else {
      msg = "Sorry, you did NOT get approved :(";
    };        

    document.getElementById('terms').innerHTML = msg;
})
/*
*/
}) //-> end of document ready load



