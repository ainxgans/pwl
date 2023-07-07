<?= $this->extend('layout/buku') ?>
<?= $this->section('content') ?>
<a href="/buku/tambah" class="btn btn-primary">Tambah</a>
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Judul</th>
      <th scope="col">Pengarang</th>
      <th scope="col">Penerbit</th>
    </tr>
  </thead>
  <tbody>
        <?php 
        foreach ($buku as $b) { ?>
            <tr>
                <td></td>
                <td><?= $b['judul']?></td>
                <td><?= $b['pengarang']?></td>
                <td><?= $b['penerbit']?></td>
            </tr>
        <?php } ?>
  </tbody>
</table>
<?= $this->endSection() ?>