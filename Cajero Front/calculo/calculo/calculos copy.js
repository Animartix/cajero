//ocultar texto del monto una vez que se ejecuten las extracciones
/*let mil= document.getElementById("mil");
let show= document.getElementById("show");
mil.addEventListener('click',toggleTxt)

let tresmil= document.getElementById("tresmil");
tresmil.addEventListener('click',toggleTxt)

let cincomil= document.getElementById("cincomil");
cincomil.addEventListener('click',toggleTxt)

let ochomil= document.getElementById("ochomil");
ochomil.addEventListener('click',toggleTxt)

let diezmil= document.getElementById("diezmil");
diezmil.addEventListener('click',toggleTxt)

let quincemil= document.getElementById("quincemil");
quincemil.addEventListener('click',toggleTxt)

function toggleTxt() {
  show.classList.toggle('hide'); 
}

//Extraer dinero
var valormil = document.getElementById("mil");
//detecto el evento cuando se escribe el numero
//y llamo a la funcion convertir
valormil.addEventListener('click', ExtraerDinero);
resultado = document.getElementById("resultado");

var valortresm = document.getElementById("tresmil");
valortresm.addEventListener('click', ExtraerDinerot);
resultado = document.getElementById("resultado");

var valorcincom = document.getElementById("cincomil");
valorcincom.addEventListener('click', ExtraerDineroc);
resultado = document.getElementById("resultado");

var valorochom = document.getElementById("ochomil");
valorochom.addEventListener('click', ExtraerDineroO);
resultado = document.getElementById("resultado");

var valordiezm = document.getElementById("diezmil");
valordiezm.addEventListener('click', ExtraerDinerod);
resultado = document.getElementById("resultado");

var valorquincem = document.getElementById("quincemil");
valorquincem.addEventListener('click', ExtraerDineroq);
resultado = document.getElementById("resultado");

//variable 
 var resultado;
 var saldoIni = 100000;
 
//funcion que realiza el calculo
function ExtraerDinero(){
        saldo = 100000 - 1000;
        resultado.innerHTML ="Esta por extraer $1000 para continuar debe oprimir CONFIRMAR"+"<br/> "+"<br/>Su saldo actual es de $: "+saldo;
      } 
function ExtraerDinerot(){
        saldo = 100000 - 3000;
        resultado.innerHTML = "Esta por extraer $3000 para continuar debe oprimir CONFIRMAR"+"<br/> "+"<br/>Su saldo actual es de $: "+saldo;
      }
function ExtraerDineroc(){
        saldo = 100000 - 5000;
        resultado.innerHTML = "Esta por extraer $5000 para continuar debe oprimir CONFIRMAR"+"<br/> "+"<br/>Su saldo actual es de $: "+saldo;
      } 
function ExtraerDineroO(){
        saldo = 100000 - 8000;
        resultado.innerHTML = "Esta por extraer $8000 para continuar debe oprimir CONFIRMAR"+"<br/> "+"<br/>Su saldo actual es de $: "+saldo;
      }  
function ExtraerDinerod(){
        saldo = 100000 - 10000;
        resultado.innerHTML = "Esta por extraer $10000 para continuar debe oprimir CONFIRMAR"+"<br/> "+"<br/>Su saldo actual es de $: "+saldo;
      }
function ExtraerDineroq(){
        saldo = 100000 - 15000;
        resultado.innerHTML = "Esta por extraer $15000 para continuar debe oprimir CONFIRMAR"+"<br/> "+"<br/>Su saldo actual es de $: "+saldo;
      }

//importe a transferir

var valImporte = document.getElementById("importe");
valImporte.addEventListener('keyup', transImporte);
resulImporte = document.getElementById("resulImporte");

var resulImporte;

function transImporte() {
  
  if(valImporte.value==''){
    return "Ingrese un monto";
}
  numero = valImporte.value;
  numero = parseFloat(numero);

  if (valImporte.value==numero) {
    resulImporte.innerHTML = "Esta por trasferir la suma de: $"+numero+"<br/>Gonzales, Leonardo."+"<br/>CUIL/CUIT: **********79."+"<br/>Caja de ahorro en pesos número: **********34.";
  }  
}*/

const inputField = document.getElementById("inputField");
const showButton = document.getElementById("showButton");
showButton.addEventListener('click',transfe);
const output = document.getElementById("output");
// Agregar un evento al botón para capturar y mostrar el valor

 
function transfe() {
    const inputValue = inputField.value; // Obtener el valor del input
    output.innerHTML = "Esta por trasferir la suma de: $"+inputValue+"<br/> "+"<br/>Gonzales, Leonardo."+"<br/> "+"<br/>CUIL/CUIT: **********79."+"<br/> "+"<br/>Caja de ahorro en pesos número: **********34." ; // Mostrar el valor en el párrafo de salida
};