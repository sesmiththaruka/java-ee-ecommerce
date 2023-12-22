// function signIn(){
//     // alert("ojk");
// let email = document.getElementById("email").value;
// let password = document.getElementById("password").value;
//
// // alert(email);
// // alert(password);
//
// fetch('login', {
//     method: 'post',
//     headers: {
//         'Content-Type': 'application/json'
//     },
//     body: JSON.stringify({
//         email: email,
//         password:password
//
//     })
// }).then(
//     response => response.text()
// ).then(
//     text => {
//         // alert(text)
//         if (text == "adminPanel") {
//             alert("Success...");
//             // window.location= "http://localhost:8080/restaurant/admincontroller/viewpanel";
//             window.location="./admincontroller/viewpanel"
//         }else if (text == "Invalid login details"){
//             alert("invalid")
//         } else {
//             alert(text);
//         }
//     }
// )
//
// }


function goToSingleProduct(id){
    // alert(id);

    var singleProductUrl = BASE_URL+'restaurant/'+id;
    window.location.href = singleProductUrl;
}