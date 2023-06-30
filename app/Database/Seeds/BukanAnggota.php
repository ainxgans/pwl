<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class BukanAnggota extends Seeder
{
    public function run()
    {
        $faker = \Faker\Factory::create('id_ID');
        for ($i = 0; $i < 100; $i++) {
            $data = [
                'judul' => $faker->sentence(3),
                'pengarang' => $faker->name,
                'penerbit' => $faker->name,
                'tahun_terbit' => $faker->year,
                'jumlah_halaman' => $faker->randomNumber(3, true),
                'sinopsis' => $faker->text,
            ];
            $this->db->table('buku')->insert($data);
        }
    }
}
