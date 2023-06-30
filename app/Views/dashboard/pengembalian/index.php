<?= $this->extend('layout/dashboard') ?>

<?= $this->section('content') ?>
<h1>Daftar Pengembalian</h1>
<table id="table" class="display table table-striped table-bordered">
    <a href="/dashboard/pengembalian/tambah" class="btn btn-primary mb-4">Tambah</a>
    <thead>
        <td>No</td>
        <td>Nama Peminjam</td>
        <td>Judul Buku</td>
        <td>Tanggal Peminjaman</td>
        <td>Tanggal Dikembalikan</td>
        <td>Denda</td>
    </thead>
    <tbody>
        <?php $no = 1;
        foreach ($pengembalian as $p) : ?>
            <tr>
                <td><?= $no++ ?></td>
                <td><?= $p['nama'] ?></td>
                <td><?= $p['judul'] ?></td>
                <td><?= $p['tanggal_peminjaman'] ?></td>
                <td><?= $p['tanggal_pengembalian'] ?></td>
                <td>Rp<?= $p['denda'] ?></td>
            </tr>
        <?php endforeach ?>
    </tbody>
</table>
<?= $this->endSection() ?>