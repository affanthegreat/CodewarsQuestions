  function solution(str){

    let x = str.split("");
    let result =  [];
    let i = 0;
    while (i <= str.length){
        let y = (x.slice(i,i+2)).join("");
        if(y != "") result.push(y);
        i = i +2  ;
    }
    if(str.length % 2 != 0){
        result[result.length - 1] += "_";
    }
    return result;
}