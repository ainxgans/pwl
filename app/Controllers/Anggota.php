<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\AnggotaModel;

class Anggota extends BaseController
{
    public function index()
    {
        $anggota = new AnggotaModel();
        $data = [
            'anggota' => $anggota->findAll()
        ];
        return view('dashboard/anggota/index', $data);
    }
    public function create()
    {
        return view('dashboard/anggota/tambah');
    }
    public function store()
    {
        $anggota = new AnggotaModel();
        $data = $this->request->getPost();
        $anggota->insert($data);
        return redirect()->to('/anggota');
    }
    public function edit($id)
    {
        $anggota = new AnggotaModel();
        $data['anggota'] = $anggota->where('id', $id)->first();
        return view('dashboard/anggota/edit', $data);
    }
    public function update($id)
    {
        $anggota = new AnggotaModel();
        $data = $this->request->getPost();
        $anggota->update($id, $data);
        return redirect()->to('/anggota');
    }
}
