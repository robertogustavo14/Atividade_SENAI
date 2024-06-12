var img = document.getElementById("imagem")
var msg = document.getElementById("msg")
var teste = ""
function inve(){
img.src = 'inverno.png'
document.body.style.background = '#c8936d'
teste = "inverno"
msg.innerHTML = ""
return teste
}
function pri(){
img.src = 'primavera.png'
document.body.style.background = '#bc0e7a'
teste = "primavera"
msg.innerHTML = ""
return teste
}
function vera(){
img.src = 'verao.png'
document.body.style.background = '#0195b1'
teste = "verao"
msg.innerHTML = ""
return teste
}
function out(){
img.src = 'outono.png'
document.body.style.background = '#ffa90a'
teste = "outono"
msg.innerHTML = ""
return teste
}
function mensagem() {
 if (teste == "inverno"){
     msg.innerHTML = "Inverno é geladinho.pena que não existe no brasil."
 }   
else if (teste == "primavera"){
    msg.innerHTML = "A primavera é considerada por muitos a estação mais bonita do ano."
}
else if (teste == "verao"){
    msg.innerHTML = "O verão é uma das quatro estações do ano que começa depois da primavera e termina com a chegada do outono."
}
else if (teste == "outono"){
    msg.innerHTML = "O outono é a estação do ano que começa após o verão e que antecede o inverno. Por conta disso, ela é considerada uma estação de transição"
}




}




