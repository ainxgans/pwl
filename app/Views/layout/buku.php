<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard Perpustakaan</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

    <style>
		/* .tambah-buku{
			display: flex;
			flex-direction: column;
			gap: 10px;
			width: 400px;
			gap: 10px 20px; 
			row-gap: 10px;
			column-gap: 20px;
		} */
        .container {
            display: flex;
        }
        .content {
            flex-grow: 1;
            padding: 2%;
        }
        header {
            background-color: #333;
            color: #fff;
            padding: 1%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        header h1 {
			margin: 0;
			padding: 0;
			text-align: center;
			flex-grow: 	1;
			font-size: 	4vw;
		}
		header .material-icons {
			font-size: 	3vw;
			margin-right: 	2%;
		}
		@media (max-width: 768px) {
			.container {
				flex-direction: 	column;
			}
			.sidebar {
				width: 	100%;
			}
			.content {
				margin-top: 	2%;
			}
			header {
				flex-direction: 	column;
				align-items: 	flex-start;
			}
			header .material-icons {
				margin-right: 	0;
				margin-bottom: 	2%;
			}
		}

    </style>
</head>
<body>
    <header>
        <i class="material-icons">dashboard</i>
        <h1>Header</h1>    
    </header>
    <script>
        var sidebar = document.getElementById('sidebar');
var content = document.getElementById('content');

sidebar.style.float = 'left';
content.style.marginLeft='20%';
    </script>
</body>
</html>
<div class="container">
    <div class="sidebar" id="sidebar">
    <ul>
       <li><a onclick="loadView('home')">Home</a></li>
       <li><a href="/buku">Buku</a></li>
       <li><a href="/register">Register</a></li>
       <li><a href="/login">Login</a></li>
    </ul>
<style>
    	.sidebar {
			width: 20%;
			background-color: #f1f1f1;
		}
		.sidebar ul {
            list-style-type: none;
			padding: 2%;
		}
		.sidebar li {
            margin-bottom: 1%;
            padding: 0 8px;
		}
		.sidebar a {
			display: block;
			text-decoration: none;
			color: #333;
			font-size: 1.5vw;
			white-space: nowrap;
			margin-bottom: 2vw;
            padding: 12px;
            font-weight: bold;
            background-color: skyblue;
            border-radius: 8px;
		}
        .sidebar a:hover {
            background-color: dodgerblue;
        }
		@media (max-width: 768px) {
			.sidebar {
				width: 100%;
			}
			.sidebar ul {
				padding: 2%;
			}
			.sidebar li {
				margin-bottom: 2%;
			}
		}
</style>
    </div>
    <div class="content" id="content">
    <?= $this->renderSection('content'); ?>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
<script>
    function loadView(halaman) {
        $.ajax ({
            url: 'http://localhost:8080/'+halaman,
            type: 'GET',
            datatype: 'html',
            success: function (response) {
                $('#konten').html(response);
                console.log(response);
            },
            error: function (xhr, status, error) {
            console.log(xhr.responseText);
            }
        });
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

<footer>
    <p>Footer</p>
</footer>
<style>
    footer {
			background-color: #333;
			color: #fff;
			padding: 1%;
			text-align: center;
			font-size: 2vw;
		}
		@media (max-width: 768px){
			footer {
				font-size: 3vw;
			}
		}
</style>
</body>
</html>