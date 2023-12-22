function login(){
    alert("OK");
    let email = document.getElementById("username").value;
    let password = document.getElementById("password").value;

    // alert(username);
    // alert(password);
// alert(BASE_URL)
    fetch(BASE_URL+'admin',{
        method:'post',
        headers:{
            'Content-Type': 'application/json'
        },
        body:JSON.stringify({
            email:email,
            password:password
        })
    }).then(response => {
        if (response.ok) {
            alert("saved");
            window.location = BASE_URL+"adminpanel"
            return response.json();
        } else {
            throw new Error('Request failed with status: ' + response.status);
        }
    })
        .then(text => console.log(text));

}


function addproduct(){
    alert("call method")

    let name = document.getElementById("name").value;
    let price = document.getElementById("price").value;
    let description = document.getElementById("description").value;
    let category = document.getElementById("category").value;
alert(name)
alert(price)
alert(description)
alert(category)
    fetch(BASE_URL+'adminpanel/addproductprocess',{
        method:'post',
        headers:{
            'Content-Type': 'application/json'
        },
        body:JSON.stringify({
            name:name,
            price:price,
            description:description,
            category:category
        })
    }).then(response => {
        if (response.ok) {
            alert("saved");
            window.location = BASE_URL+"adminpanel"
            return response.json();
        } else {
            throw new Error('Request failed with status: ' + response.status);
        }
    })
        .then(text => console.log(text));
}
