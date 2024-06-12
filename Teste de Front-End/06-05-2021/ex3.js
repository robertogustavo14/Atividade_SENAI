var timer = setInterval(contador,1000)
let c = 10
function contador(){
        console.log(c);
        c--
        if(c<0){
            clearInterval(timer)
        }
        
}
