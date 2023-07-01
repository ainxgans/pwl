<?= $this->extend('layout/dashboard') ?>

<?= $this->section('content') ?>
<h1>Daftar Buku</h1>
<table id="table" class="display table table-striped table-bordered">
    <a href="/dashboard/buku/tambah" class="btn btn-primary mb-4">Tambah</a>

    <thead>
        <td>No</td>
        <td>Judul</td>
        <td>Pengarang</td>
        <td>Penerbit</td>
        <td>Tahun terbit</td>
        <td>Jumlah Halaman</td>
        <td>Sinopsis</td>
        <td>Aksi</td>
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
                <td>
                    <form action="/dashboard/buku/hapus" method="post">
                        <input type="hidden" value="<?= $b['id'] ?>" name="id">
                        <button type="submit" class="btn btn-danger" onclick="hapus()">Hapus</button>
                    </form>
                </td>
            </tr>
        <?php endforeach ?>
    </tbody>
</table>
<?= $this->endSection() ?>