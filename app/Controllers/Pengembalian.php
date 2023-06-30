<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\PeminjamanModel;
use App\Models\PengembalianModel;

class Pengembalian extends BaseController
{
    public function index()
    {
        $pengembalian = new PengembalianModel();
        $data = [
            'pengembalian' => $pengembalian->getPengembalian(),
        ];
        return view('dashboard/pengembalian/index', $data);
    }
    public function create()
    {
        $peminjaman = new PeminjamanModel();
        $data = [
            'peminjaman' => $peminjaman->getPeminjaman(),
        ];
        return view('dashboard/pengembalian/create', $data);
    }
    public function store()
    {
        $pengembalian = new PengembalianModel();
        $data = $this->request->getPost();
        $pengembalian->insert($data);
        return redirect()->to('/dashboard/pengembalian');
    }
    public function denda($id)
    {
        $peminjaman = new PeminjamanModel();
        $data = $peminjaman->find($id);
        $tanggal = $data['tanggal_pengembalian'];
        return $tanggal;
    }
}
