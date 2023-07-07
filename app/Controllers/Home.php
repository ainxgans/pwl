<?php

namespace App\Controllers;
use App\Models\Buku;

class Home extends BaseController
{
    public function index()
    {
        // $this->db2 = \Config\database::connect();
        // $query = $this->db2->query("SELECT * FROM buku")->getResult();
        // var_dump($query);
        echo View('header');
        echo View('home');
        echo View('footer');
    }
    public function home()
    {
        return "Ini halaman home";
    }
    public function buku()
    {
        $buku = new Buku();
        $data['buku'] = $buku->findAll();
        // return view('dashboard/buku', $data);
        return json_encode($data);
    }
    
}
