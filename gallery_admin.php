<html>
    <h1 align="center"><font size="10"><ins><big>Admin Page</big></ins></font></h1>
    <hr><hr>
    <body>

        <form>
            <h4>Add an artist : </h4>
            <b>Name : </b> <input type="text" id="artist_name" > </input> 
            <b>Birthplace : </b> <input type="text" id="artist_place" > </input> 
            <b>Age : </b> <input type="number" id="artist_age" > </input>
            <button type="button" onclick="insert_artist()"><b>Add</b></button>
            <hr>

            
            <h4>Add an art: </h4>
            <b>Name : </b> <input type="text" id="art_name" > </input> 
            <b>Artist : </b> <select id="art_artist" > </select> 
            <b>Style : </b> <input type="text" id="art_style" > </input>
            <b>Date : </b> <input type="date" id="art_date" > </input>
            <button type="button" onclick="insert_artist()"><b>Add</b></button>
            <hr>
        </form>
    </body>

    <script>
        function post_data_parse(file, data, doSomething) {
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

        function populate_dropdown(elname, data, decode_fn) {
            var select = document.getElementById(elname);
            select.options.length = 0;
            for(var i = 0;i < data.length; i++) {
                var opt = decode_fn(data[i]);
                var el = document.createElement("option");
                el.textContent = opt;
                el.value = opt;
                select.appendChild(el);
            }
            return select;
        }

        function insert_artist() {
            var n = encodeURIComponent(document.getElementById("artist_name").value);
            var b = encodeURIComponent(document.getElementById("artist_place").value);
            var a = document.getElementById("artist_age").value;
            post_data_parse("gallery_admin_helper.php","query=search_artist&name="+n, function(x) {
                if(x.length > 0) {
                    alert("Artist already exists! Unable to add!");
                } else {
                    post_data_parse("gallery_admin_helper.php", "query=insert_artist&name="+n+"&place="+b+"&age="+a, function(x){});
                    alert("Artist inserted successfully!");
                    populate_artist();
                }
            });
        }

        function populate_artist() {
            post_data_parse("gallery_admin_helper.php", "query=get_artist_names", function(x) {
                populate_dropdown("art_artist", x, function(x) { return x.name});
            });
        }

        window.onload = populate_artist;
    </script>
</html>