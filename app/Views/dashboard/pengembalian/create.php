<?= $this->extend('layout/dashboard') ?>

<?= $this->section('content') ?>
<h1>Tambah Data Peminjaman</h1>
<div class="container">
    <form action="/dashboard/pengembalian/tambah" method="post">
        <div class="mb-3 d-flex flex-column">
            <label for="exampleInputEmail1" class="form-label">Nama Anggota & Buku Yang Dipinjam</label>
            <select name="id_peminjaman" id="select" class="form-select mb-3 form-control d-flex" onchange="pilihPeminjaman()">
                <?php foreach ($peminjaman as $p) { ?>
                    <option value="<?= $p['id'] ?>"><?= $p['nama'] ?> ===== <?= $p['judul'] ?></option>
                <?php } ?>
            </select>
        </div>
        <div class="mb-3 d-flex flex-column">
            <label for="exampleInputPassword1" class="form-label">Tanggal Pengembalian</label>
            <input id="pengembalian" type="date" name="tanggal_pengembalian" class="form-control" min="2023-01-" onchange="hitungDenda()">
        </div>
        <div class="mb-3 d-flex flex-column">
            <label for="exampleInputPassword1" class="form-label">Denda (Rp2.000 perhari)</label>
            <input type="text" name="denda" class="form-control" id="denda">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
<script>
    function pilihPeminjaman() {
        var peminjaman = document.getElementById("select").value;
        var denda = document.getElementById("denda");
        return fetch('/dashboard/pengembalian/denda/' + peminjaman)
            .then(response => response.text())
            .then(data => {
                return data;
            });
    }

    async function hitungDenda() {
        try {
            let tanggal = await pilihPeminjaman();
            let pengembalian = document.getElementById("pengembalian").value;

            // Menghitung selisih dan menghitung denda
            let selisih = new Date(pengembalian) - new Date(tanggal);
            let selisihHari = Math.ceil(selisih / (1000 * 60 * 60 * 24));
            let denda = selisihHari * 2000; // Denda 

            // Menampilkan atau memperbarui elemen di halaman dengan nilai denda
            document.getElementById("denda").value = denda;
        } catch (error) {
            // Tangani kesalahan yang terjadi saat mengambil tanggal
            console.error('Kesalahan saat mengambil tanggal:', error);
        }
    }
</script>
<?= $this->endSection() ?>