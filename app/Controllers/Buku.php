<?php

namespace App\Controllers;

use App\Models\BukuModel;
use App\Controllers\BaseController;

class Buku extends BaseController
{
    public function index()
    {
        $buku = new BukuModel();
        $data['buku'] = $buku->findAll();
        return view('dashboard/buku/index', $data);
    }
    public function tambah()
    {
        return view('buku/tambah');
    }
    public function save()
    {
        $buku = new BukuModel();
        $data = $this->request->getPost();
        if ($buku->insert($data)) {
            return redirect()->to('/buku');
        }
    }
}
