<?= $this->extend('layout/dashboard') ?>

<?= $this->section('content') ?>
<div class="container mt-3 gap-4">
    <div class="card text-bg-primary mb-3 col-2" style="max-width: 18rem;">
        <div class="card-header">Jumlah Buku</div>
        <div class="card-body">
            <h5 class="card-title fw-bold"><?= $buku ?></h5>
        </div>
    </div>
    <div class="card text-bg-success mb-3 col-2" style="max-width: 18rem;">
        <div class="card-header">Jumlah Anggota</div>
        <div class="card-body">
            <h5 class="card-title fw-bold"><?= $anggota ?></h5>
        </div>
    </div>
    <div class="card text-bg-info mb-3 col-2" style="max-width: 18rem;">
        <div class="card-header">Jumlah Peminjaman</div>
        <div class="card-body">
            <h5 class="card-title fw-bold"><?= $peminjaman ?></h5>
        </div>
    </div>
    <div class="card text-bg-warning mb-3 col-2" style="max-width: 18rem;">
        <div class="card-header">Jumlah Pengembalian</div>
        <div class="card-body">
            <h5 class="card-title fw-bold"><?= $pengembalian ?></h5>
        </div>
    </div>

</div>

<?= $this->endSection() ?>