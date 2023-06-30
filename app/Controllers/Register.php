<?php

namespace App\Controllers;
use App\Models\UserModel;

class Register extends BaseController
{
    public function index()
    {
        echo view('header');
        echo view('register');
    }
    public function tambah()
    {
        $userModel = new UserModel();
        $userModel->insert([
            "nama" => $this->request->getPost('nama'),
            "email" => $this->request->getPost('email'),
            "password" => password_hash($this->request->getPost('password'),PASSWORD_DEFAULT)
        ]);
        return redirect()->to('/login');
    }
}
