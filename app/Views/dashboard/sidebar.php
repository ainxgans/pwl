    <ul>
    	<li><a onclick="loadView('home')">Home</a></li>
    	<li><a href="buku">Buku</a></li>
    	<li><a href="anggota">Anggota</a></li>
    	<li><a href="">Peminjaman</a></li>
    	<li><a href="">Pengembalian</a></li>
    	<li><a href="/register">Register</a></li>
    	<li><a href="/login">Login</a></li>
    </ul>
    <style>
    	.sidebar {
    		display: flex;
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