<html>
    <body>
        <input type="radio" name="choice" value="1" id="choice_artist" checked> Artist </input>
        <input type="radio" name="choice" value="2" id="choice_type"> Type </input>
        <input type="radio" name="choice" value="3" id="choice_name"> Art Name </input>

        <input type="text" id="search_term" style="width: 100%" onkeydown="perform_search()"> </input>

        <table id="populate" style="width: 100%"> 
            <th> Art Name </th>
            <th> Date </th>
            <th> Type </th>
            <th> Artist </th>
        </table>
    </body>
    <script>
        
        function post_data(file, data, doSomething) {
            var http = new XMLHttpRequest();
            var url = file;
            var params = data;
            http.open('POST', url, true);
            //Send the proper header information along with the request
            http.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
            http.onreadystatechange = function() {//Call a function when the state changes.
                if(http.readyState == 4 && http.status == 200) {
                    doSomething(JSON.parse(http.responseText));
                }
            }
            http.send(params);
        }

        function populate_table(display) {
            var tbl = document.getElementById("populate");
            for(var i = 1; i < tbl.rows.length; i++) {
                if(!display(tbl.rows[i])) {
                    tbl.rows[i].style.display = "none";
                } else {
                    tbl.rows[i].style.display = "";
                }
            }
        }

        function perform_search() {
            var by_artist = document.getElementById("choice_artist").checked;
            var by_type = document.getElementById("choice_type").checked;
            var by_name = document.getElementById("choice_name").checked;
            var value = document.getElementById("search_term").value;
            if(by_artist) {
                populate_table(function(x) {
                   // console.log(x.cells[3].innerHTML);
                    return x.cells[3].innerHTML.toLowerCase().indexOf(value.toLowerCase()) != -1;
                });
            } else if(by_type) {
                populate_table(function(x) {
                    return x.cells[2].innerHTML.toLowerCase().indexOf(value.toLowerCase()) != -1;
                });
            } else {
                populate_table(function(x) {
                    return x.cells[0].innerHTML.toLowerCase().indexOf(value.toLowerCase()) != -1;
                });
            }
        }

        function initializeTable(x) {
            //console.log(x);
            var tbl = document.getElementById("populate");
            for(var i = 0; i < x.length; i++) {
                var r = x[i];
               // console.log(r);
                var row = document.createElement("tr");
                var cell1 = document.createElement("td");
                var cell2 = document.createElement("td");
                var cell3 = document.createElement("td");
                var cell4 = document.createElement("td");
                var textnode1 = document.createTextNode(r.artname);
                var textnode2 = document.createTextNode(r.artdate);
                var textnode3 = document.createTextNode(r.style);
                var textnode4 = document.createTextNode(r.artist);
                cell1.appendChild(textnode1);
                cell2.appendChild(textnode2);
                cell3.appendChild(textnode3);
                cell4.appendChild(textnode4);
                row.appendChild(cell1);
                row.appendChild(cell2);
                row.appendChild(cell3);
                row.appendChild(cell4);
                tbl.appendChild(row);
            }
        }

        function populate_all() {
            post_data("query_helper.php", "query=showall", initializeTable);
        }

        window.onload = populate_all;
    </script>
</html>