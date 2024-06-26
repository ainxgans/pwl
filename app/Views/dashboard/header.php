<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard Perpustakaan</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>
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