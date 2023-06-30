<?= $this->extend('layout/dashboard') ?>

<?= $this->section('content') ?>
<h1>Tambah Data Buku</h1>
<div class="container">
    <form action="/dashboard/buku/tambah" method="post" class="col-6">
        <div class="mb-3 d-flex flex-column">
            <label for="judul" class="form-label">Judul</label>
            <input type="text" name="judul" class="form-control" id="denda">
        </div>
        <div class="mb-3 d-flex flex-column">
            <label for="pengarang" class="form-label">Pengarang</label>
            <input type="text" name="pengarang" class="form-control" id="denda">
        </div>
        <div class="mb-3 d-flex flex-column">
            <label for="penerbit" class="form-label">Penerbit</label>
            <input type="text" name="penerbit" class="form-control" id="denda">
        </div>
        <div class="mb-3 d-flex flex-column">
            <label for="tahun_terbit" class="form-label">Tahun Terbit</label>
            <input type="number" name="tahun_terbit" class="form-control" id="denda">
        </div>
        <div class="mb-3 d-flex flex-column">
            <label for="jumlah_halaman" class="form-label">Jumlah halaman</label>
            <input type="number" name="jumlah_halaman" class="form-control" id="denda">
        </div>
        <div class="mb-3 d-flex flex-column">
            <label for="sinopsis" class="form-label">Sinopsis</label>
            <input type="text" name="sinopsis" class="form-control" id="denda">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
<?= $this->endSection() ?>