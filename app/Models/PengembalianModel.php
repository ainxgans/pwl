<?php

namespace App\Models;

use CodeIgniter\Model;

class PengembalianModel extends Model
{
    protected $DBGroup          = 'default';
    protected $table            = 'pengembalian';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $insertID         = 0;
    protected $returnType       = 'array';
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = [
        'id_peminjaman', 'tanggal_pengembalian', 'denda'
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
    protected $afterInsert    = [""];
    protected $beforeUpdate   = [];
    protected $afterUpdate    = [];
    protected $beforeFind     = [];
    protected $afterFind      = [];
    protected $beforeDelete   = [];
    protected $afterDelete    = [];

    public function getPengembalian()
    {
        $this->select('pengembalian.*, anggota.nama, buku.judul, peminjaman.tanggal_peminjaman');
        $this->join('peminjaman', 'peminjaman.id = pengembalian.id_peminjaman');
        $this->join('anggota', 'anggota.id = peminjaman.id_anggota');
        $this->join('buku', 'buku.id = peminjaman.id_buku');
        return $this->findAll();
    }
}
