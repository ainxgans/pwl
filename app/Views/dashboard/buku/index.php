<?= $this->extend('layout/dashboard') ?>

<?= $this->section('content') ?>
<h1>Daftar Buku</h1>
<table id="table" class="display table table-striped table-bordered">
    <thead>
        <td>No</td>
        <td>Judul</td>
        <td>Pengarang</td>
        <td>Penerbit</td>
        <td>Tahun terbit</td>
        <td>Jumlah Halaman</td>
        <td>Sinopsis</td>
    </thead>
    <tbody>
        <?php $no = 1;
        foreach ($buku as $b) : ?>
            <tr>
                <td><?= $no++ ?></td>
                <td><?= $b['judul'] ?></td>
                <td><?= $b['pengarang'] ?></td>
                <td><?= $b['penerbit'] ?></td>
                <td><?= $b['tahun_terbit'] ?></td>
                <td><?= $b['jumlah_halaman'] ?></td>
                <td><?= substr_replace($b['sinopsis'], "...", 50) ?></td>
            </tr>
        <?php endforeach ?>
    </tbody>
</table>
<?= $this->endSection() ?>