<?= $this->extend('layout/dashboard') ?>

<?= $this->section('content') ?>
<h1>Tambah Data Buku</h1>
<div class="container">
    <form action="/dashboard/anggota/tambah" method="post" class="col-6">
        <div class="mb-3 d-flex flex-column">
            <label for="nama" class="form-label">Nama</label>
            <input type="text" name="nama" class="form-control" id="denda">
        </div>
        <div class="mb-3 d-flex flex-column">
            <label for="email" class="form-label">Email</label>
            <input type="email" name="email" class="form-control" id="denda">
        </div>
        <div class="mb-3 d-flex flex-column">
            <label for="telepon" class="form-label">Telepon</label>
            <input type="tel" name="telepon" class="form-control" id="denda">
        </div>
        <div class="mb-3 d-flex flex-column">
            <label for="alamat" class="form-label">Alamat</label>
            <textarea name="alamat" id="" cols="30" rows="10" class="form-control"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
<?= $this->endSection() ?>