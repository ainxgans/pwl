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
    public function create()
    {
        return view('dashboard/buku/create');
    }
    public function store()
    {
        $buku = new BukuModel();
        $data = $this->request->getPost();
        $buku->insert($data);
        return redirect()->to('/dashboard/buku');
    }
}
