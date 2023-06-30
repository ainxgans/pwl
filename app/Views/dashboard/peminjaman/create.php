<?= $this->extend('layout/dashboard') ?>

<?= $this->section('content') ?>
<h1>Tambah Data Peminjaman</h1>
<div class="container">
    <form action="/dashboard/peminjaman/tambah" method="post">
        <div class="mb-3 d-flex flex-column">
            <label for="exampleInputEmail1" class="form-label">Nama Anggota</label>
            <select name="id_anggota" id="select" class="form-select mb-3 form-control d-flex">
                <?php foreach ($anggota as $a) { ?>
                    <option value="<?= $a['id'] ?>"><?= $a['nama'] ?></option>
                <?php } ?>
            </select>
        </div>
        <div class="mb-3 d-flex flex-column">
            <label for="exampleInputPassword1" class="form-label">Judul Buku</label>
            <select name="id_buku" id="selectbuku" class="form-select mb-3 form-control d-flex">
                <?php foreach ($buku as $a) { ?>
                    <option value="<?= $a['id'] ?>"><?= $a['judul'] ?></option>
                <?php } ?>
            </select>
        </div>
        <div class="mb-3 d-flex flex-column">
            <label for="exampleInputPassword1" class="form-label">Tanggal Peminjaman</label>
            <input type="date" name="tanggal_peminjaman" class="form-control" min="2023-01-01">
        </div>
        <div class="mb-3 d-flex flex-column">
            <label for="exampleInputPassword1" class="form-label">Tanggal Pengembalian</label>
            <input type="date" name="tanggal_pengembalian" class="form-control" min="2023-01-01">

        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
<?= $this->endSection() ?>