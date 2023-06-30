<?php

namespace App\Controllers;

use App\Models\AnggotaModel;
use App\Models\BukuModel;
use App\Models\PeminjamanModel;
use App\Models\PengembalianModel;
use Codeigniter\Controller;

class Dashboard extends BaseController
{
    public function index()
    {
        $buku = new BukuModel();
        $anggota = new AnggotaModel();
        $peminjaman = new PeminjamanModel();
        $pengembalian = new PengembalianModel();
        $data = [
            'buku' => $buku->countAll(),
            'anggota' => $anggota->countAll(),
            'peminjaman' => $peminjaman->countAll(),
            'pengembalian' => $pengembalian->countAll(),
        ];
        return view('dashboard/index', $data);
    }
}
