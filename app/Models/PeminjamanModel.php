<?php

namespace App\Models;

use CodeIgniter\Model;

class PeminjamanModel extends Model
{
    protected $DBGroup          = 'default';
    protected $table            = 'peminjaman';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $insertID         = 0;
    protected $returnType       = 'array';
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = [
        'id_anggota', 'id_buku', 'tanggal_peminjaman', 'tanggal_pengembalian'
    ];

    // Dates
    protected $useTimestamps = false;
    protected $dateFormat    = 'datetime';
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';
    protected $deletedField  = 'deleted_at';

    // Validation
    protected $validationRules      = [];
    protected $validationMessages   = [];
    protected $skipValidation       = false;
    protected $cleanValidationRules = true;

    // Callbacks
    protected $allowCallbacks = true;
    protected $beforeInsert   = [];
    protected $afterInsert    = [];
    protected $beforeUpdate   = [];
    protected $afterUpdate    = [];
    protected $beforeFind     = [];
    protected $afterFind      = [];
    protected $beforeDelete   = [];
    protected $afterDelete    = [];

    public function getPeminjaman()
    {
        $this->select('peminjaman.*, anggota.nama , buku.judul');
        $this->join('anggota', 'anggota.id = peminjaman.id_anggota');
        $this->join('buku', 'buku.id = peminjaman.id_buku');
        return $this->findAll();
    }
    public function getTanggal($id)
    {
        $this->find($id);
        $tanggal = $this->tanggal_pengembalian;
        return $tanggal;
    }
}
