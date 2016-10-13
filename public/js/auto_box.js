    function myFunction() {
        var x = document.getElementById("myInput").value;
        var y = "";
        for (i = 0; i < x; i++)
            document.getElementById("demo").innerHTML = "Enter their names in the boxes below:<br>";
        for (var i = 1; i <= x; i++) {
            var input = document.createElement("input");
            input.type = "text";
            input.name = "text" + i;
            input.id = "marv";
            input.required = true;
            input.placeholder = "Enter Name"
            document.getElementById("demo").appendChild(input).value;
        }
    }