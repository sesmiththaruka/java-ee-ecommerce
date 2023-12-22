<%--
  Created by IntelliJ IDEA.
  User: Tharuka
  Date: 10/3/2023
  Time: 10:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<input id="number">
<h1 id="h1"></h1>
<button onclick="addNumber()" >Enter</button>
</body>

<script type="text/javascript">
    function addNumber(){
        var numberu =  document.getElementById("number").value;
var arr = [];
arr = numberu.split('-');
alert(arr[0])
        var number = arr[0];
        var number1 = arr[0];
var number2 = arr[1];
        var h1 = document.getElementById("h1");
        fetch('${BASE_URL}test',{
            method:'post',
            headers:{
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                number:number,
                number1:number1,
                number2:number2
            })
        }).then(response => response.text())
            .then(

                text => {
                    alert(text);
                    h1.innerHTML = text;
                    if(text=="deleted"){
                        alert(text);
                        window.location = "${BASE_URL}adminpanel/product"
                    }else if (text=="Register success"){
                        alert(text)
                        window.location = "./"
                    }
                })

    }
</script>
</html>
