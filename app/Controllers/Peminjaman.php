<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\AnggotaModel;
use App\Models\BukuModel;
use App\Models\PeminjamanModel;

class Peminjaman extends BaseController
{
    public function index()
    {
        $peminjaman = new PeminjamanModel();
        $anggota = new AnggotaModel();
        $data = [
            'peminjaman' => $peminjaman->getPeminjaman()
        ];
        return view('dashboard/peminjaman/index', $data);
    }
    public function create()
    {
        $peminjaman = new PeminjamanModel();
        $anggota = new AnggotaModel();
        $buku = new BukuModel();
        $data = [
            'anggota' => $anggota->findAll(),
            'buku' => $buku->findAll(),
            'peminjaman' => $peminjaman->findAll()
        ];
        return view('dashboard/peminjaman/create', $data);
    }
    public function store()
    {
        $peminjaman = new PeminjamanModel();
        $data = $this->request->getPost();
        $peminjaman->insert($data);
        return redirect()->to('/dashboard/peminjaman');
    }
}
