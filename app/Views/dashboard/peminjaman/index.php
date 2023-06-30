<?= $this->extend('layout/dashboard') ?>

<?= $this->section('content') ?>
<h1>Daftar Peminjaman</h1>
<table id="table" class="display table table-striped table-bordered">
    <a href="/dashboard/peminjaman/tambah" class="btn btn-primary mb-4">Tambah</a>
    <thead>
        <td>No</td>
        <td>Nama Peminjam</td>
        <td>Judul Buku</td>
        <td>Tanggal Peminjaman</td>
        <td>Tanggal Pengembalian</td>
    </thead>
    <tbody>
        <?php $no = 1;
        foreach ($peminjaman as $p) : ?>
            <tr>
                <td><?= $no++ ?></td>
                <td><?= $p['nama'] ?></td>
                <td><?= $p['judul'] ?></td>
                <td><?= $p['tanggal_peminjaman'] ?></td>
                <td><?= $p['tanggal_pengembalian'] ?></td>
            </tr>
        <?php endforeach ?>
    </tbody>
</table>
<?= $this->endSection() ?>