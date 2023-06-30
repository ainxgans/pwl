<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class Anggota extends Seeder
{
    public function run()
    {
        $faker = \Faker\Factory::create('id_ID');
        for ($i = 0; $i < 100; $i++) {
            $data = [
                'nama' => $faker->name,
                'alamat' => $faker->address,
                'email' => $faker->email,
                'telepon' => $faker->phoneNumber
            ];
            $this->db->table('anggota')->insert($data);
        }
    }
}
