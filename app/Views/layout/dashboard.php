<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?= @$title ? $title : 'Dashboard' ?></title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css">

</head>
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
        flex-grow: 1;
        font-size: 4vw;
    }

    header .material-icons {
        font-size: 3vw;
        margin-right: 2%;
    }

    @media (max-width: 768px) {
        .container {
            flex-direction: column;
        }

        .sidebar {
            width: 100%;
        }

        .content {
            margin-top: 2%;

            max-width: 100%;
            margin-left: 0;
            padding: 0 2%;
            box-sizing: border-box;
        }

        header {
            flex-direction: column;
            align-items: flex-start;
        }

        header .material-icons {
            margin-right: 0;
            margin-bottom: 2%;
        }
    }

    footer {
        background-color: #333;
        color: #fff;
        padding: 1%;
        text-align: center;
        font-size: 2vw;
    }

    @media (max-width: 768px) {
        footer {
            font-size: 3vw;
        }
    }

    h2 {
        font-size: 3vw;
        text-align: center;
    }

    p {
        font-size: 2vw;
        text-align: justify;
    }

    @media (max-width: 768px) {
        h2 {
            font-size: 4vw;
        }

        p {
            font-size: 3vw
        }
    }

    footer {
        background-color: #333;
        color: #fff;
        padding: 1%;
        text-align: center;
        font-size: 2vw;
    }

    @media (max-width: 768px) {
        footer {
            font-size: 3vw;
        }
    }

    .container {
        padding-left: 0px;
        width: 100vw !important;
        margin: 0;
        display: flex;

    }
</style>

<body>
    <header>
        <i class="material-icons">dashboard</i>
        <h1>Header</h1>
    </header>
    <div class="container">
        <div class="sidebar col-2" id="sidebar">
            <ul>
                <li><a href="/dashboard">Dashboard</a></li>
                <li><a href="/dashboard/anggota">Anggota</a></li>
                <li><a href="/dashboard/buku">Buku</a></li>
                <li><a href="/dashboard/peminjaman">Peminjaman</a></li>
                <li><a href="/dashboard/pengembalian">Pengembalian</a></li>
            </ul>
        </div>
        <div class="content" id="content">
            <?= $this->renderSection('content'); ?>
        </div>
    </div>
    <footer>
        <p>Footer</p>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        var sidebar = document.getElementById('sidebar');
        var content = document.getElementById('content');

        sidebar.style.float = 'left';
        content.style.marginLeft = '2%';

        $(document).ready(function() {
            $('#table').DataTable();
            $('#select').select2();
            $('#selectbuku').select2();
        });

        function hapus() {
            event.preventDefault();
            let form = event.target.form;
            Swal.fire({
                title: 'Apakah anda yakin?',
                text: "Data yang dihapus tidak dapat dikembalikan!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#d33',
                cancelButtonColor: '#333',
                confirmButtonText: 'Ya, hapus!',
                cancelButtonText: 'Batal'
            }).then((result) => {
                if (result.isConfirmed) {
                    form.submit();
                }
            })
        }
        if (<?= session()->getFlashdata('success') ? 'true' : 'false' ?>) {
            Swal.fire({
                icon: 'success',
                title: 'Berhasil',
                text: '<?= session()->getFlashdata('success') ?>',
                showConfirmButton: false,
                timer: 1500
            })
        }
    </script>
</body>

</html>