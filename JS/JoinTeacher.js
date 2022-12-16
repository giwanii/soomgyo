function nextJoin() {
  var java = document.getElementById("JAVA") 
  var Cc = document.getElementById("Cc") 
  var C = document.getElementById("C") 
  var Python= document.getElementById("Python") 
  var Oracle = document.getElementById("Oracle") 
  if(!(java.checked || Cc.checked || C.checked|| Python.checked|| Oracle.checked )){
     alert("체크를 해주세요.")
     return false;
  }
  
}