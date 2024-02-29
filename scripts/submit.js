function numeralsOnly(evt) {
    evt = (evt) ? evt : event;
    var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode : 
        ((evt.which) ? evt.which : 0));
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        alert("Enter numerals only in this field.");
        return false;
    }
    return true;
}

function lettersOnly(evt) {
    evt = (evt) ? evt : event;
    var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode : 
        ((evt.which) ? evt.which : 0));
    if(charCode==64 || charCode == 46)
       return true;
    if (charCode > 31 && (charCode < 65 || charCode > 90) && 
        (charCode < 97 || charCode > 122)) {
        alert("Enter letters only.");
        return false;
    }
    return true;
}


function emailcheck(obj){
var string1=document.example.email.value
if (string1.indexOf("@")==-1){
alert("Please input a valid email address!")
document.example.email.focus()
}
}






