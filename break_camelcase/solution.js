function solution(string) {
    let result = "";
    for(let i = 0 ; i < string.length; i++){
        if(string[i] == string[i].toUpperCase()){
            result += " ";
        }
        result = result + string[i];
    }
    return result;
}
