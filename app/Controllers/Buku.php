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
    public function edit($id)
    {
        $buku = new BukuModel();
        $data['buku'] = $buku->where('id', $id)->first();
        return view('dashboard/buku/edit', $data);
    }
    public function update($id)
    {
        $buku = new BukuModel();
        $data = $this->request->getPost();
        $buku->update($id, $data);
        return redirect()->to('/buku');
    }
    public function delete()
    {
        $buku = new BukuModel();
        $id = $this->request->getPost('id');
        $buku->delete($id);
        return redirect()->to('/dashboard/buku')->with('success', 'Data berhasil dihapus');
    }
}
