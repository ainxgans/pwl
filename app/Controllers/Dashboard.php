<?php

namespace App\Controllers;

use Codeigniter\Controller;

class Dashboard extends BaseController
{
    public function index()
    {
        return view('dashboard/index');
    }
}
