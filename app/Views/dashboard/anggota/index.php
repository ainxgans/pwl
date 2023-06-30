<?= $this->extend('layout/dashboard') ?>

<?= $this->section('content') ?>
<h1>Daftar Anggota</h1>
<a href="/dashboard/anggota/tambah" class="btn btn-primary mb-4">Tambah</a>
<table id="table" class="display table table-striped table-bordered">
    <thead>
        <td>No</td>
        <td>Nama</td>
        <td>Alamat</td>
        <td>Email</td>
        <td>Telepon</td>
    </thead>
    <tbody>
        <?php $no = 1;
        foreach ($anggota as $a) : ?>
            <tr>
                <td><?= $no++ ?></td>
                <td><?= $a['nama'] ?></td>
                <td><?= $a['alamat'] ?></td>
                <td><?= $a['email'] ?></td>
                <td><?= $a['telepon'] ?></td>
            </tr>
        <?php endforeach ?>
    </tbody>
</table>
<?= $this->endSection() ?>