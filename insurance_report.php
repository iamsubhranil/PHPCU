<html>
    <h1 align="center">Accident report</h1>
    <hr>
    <body>
        <b> Accident Number : </b> <select id="acc_id" onchange="populate_tables()"></select>
        <br>
        <b> Date : </b> <input type="text" id="acc_date"  disabled>
        <b> Time : </b> <input type="text" id="acc_time"  disabled>
        <br>
        <h2> Involved car details : </h2>
        <table id="cars_table" width="95%">
            <tr>
                <th> Registration No. </th>
                <th> Make </th>
                <th> Model </th>
                <th> Insurer </th>
                <th> Date </th>
                <th> Amount </th>
            </tr>

        </table>
    </body>

    <script>
        function post_data(filename, data, doSomething) {
            var http = new XMLHttpRequest();
            http.open('POST', filename, true);
            http.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');

            http.onreadystatechange = function() {
                if(http.readyState == 4 && http.status == 200) {
                    console.log(http.responseText);
                    doSomething(JSON.parse(http.responseText));
                }
            }
            http.send(data);
        }

        function populate_dropdown(name, data, decode_fn) {
            var dropdown = document.getElementById(name);
            for(var i = 0; i < data.length; i++) {
                var opt = decode_fn(data[i]);
                var el = document.createElement("option");
                el.textContent = opt;
                el.value = opt;
                dropdown.appendChild(el);
            }
        }

        function add_cell(row, text) {
            var data = document.createTextNode(text);
            var cell = document.createElement("td");
            cell.appendChild(data);
            row.appendChild(cell);
        }

        function populate_table(tbl, data) {
            var t = document.getElementById(tbl);
            // remove preivous rows
            while(t.rows.length > 1) {
                t.deleteRow(1);
            }
            for(var i = 0; i < data.length; i++) {
                var det = data[i];
                var row = document.createElement("tr");
                add_cell(row, det.car_number);
                add_cell(row, det.make);
                add_cell(row, det.model);
                add_cell(row, det.name);
                add_cell(row, det.idate);
                add_cell(row, det.amount);
                t.appendChild(row);
            }
        }

        function populate_tables() {
            var aid = document.getElementById("acc_id").value;
            post_data("insurance_backend.php", "query=accident_details&aid=" + aid,
                function(x) {
                    console.log(x);
                    document.getElementById("acc_date").value = x[0].date_;
                    document.getElementById("acc_time").value = x[0].time_;
                });
            post_data("insurance_backend.php", "query=car_details&aid=" + aid, function(x) {
                populate_table("cars_table", x);
            });
            console.log("Hello World!");
        }

        function populate_accidents() {
            post_data("insurance_backend.php", "query=get_accidents", function(x) {
                populate_dropdown("acc_id", x, function(x) {
                    return x.aid;
                });
            });
        }

        window.onload = populate_accidents;
    </script>
</html>
