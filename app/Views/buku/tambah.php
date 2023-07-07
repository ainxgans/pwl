<?= $this->extend('layout/buku') ?>
<?= $this->section('content') ?>
<h1>Tambah buku</h1>
<form action="/buku/tambah" method="post" class="tambah-buku">
    <label for="judul" class="form-label">Judul</label>
    <input type="text" name="judul" class="form-control">
    <label for="pengarang" class="form-label">Label</label>
    <input type="text" name="pengarang" class="form-control">
    <label for="penerbit" class="form-label">Penerbit</label>
    <input type="text" name="penerbit" class="form-control">
    <label for="tahun_terbit" class="form-label">Tahun terbit</label>
    <input type="date" name="tahun_terbit" class="form-control">
    <label for="jumlah_halaman" class="form-label">Jumlah halaman</label>
    <input type="nuber" name="jumlah_halaman" class="form-control">
    <label for="sinopsis" class="form-label">Sinopsis</label>
    <input type="text" name="sinopsis" class="form-control">
    <button type="submit" class="btn btn-primary mt-2">Tambah</button>

</form>

<?= $this->endSection() ?>