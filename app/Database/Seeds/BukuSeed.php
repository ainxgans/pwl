<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class BukuSeed extends Seeder
{
    public function run()
    {
        for($i=0; $i<100; $i++) {
            $faker = \Faker\Factory::create('id_ID');
            $data = [
              'id' => $faker->randomNumber(4),
              'judul' => $faker->name(),
              'pengarang'    => $faker->name(),
              'penerbit' => $faker->name(),
              'tahun_terbit' => $faker->randomNumber(4),
              'jumlah_halaman' => $faker->randomNumber(2),
              'sinopsis' => $faker->realText(rand(10, 20))
            ];
            $this->db->table('buku')->insert($data);
        }
    }
}
