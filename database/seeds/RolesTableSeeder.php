<?php

use App\Role;
use Illuminate\Database\Seeder;

class RolesTableSeeder extends Seeder
{
    public function run()
    {
        $roles = [
            [
                'id'    => 1,
                'title' => 'Admin',
            ],
            [
                'id'    => 2,
                'title' => 'User',
            ],
            [
                'id'    => 3,
                'title' => 'Dosen',
            ],
            [
                'id'    => 4,
                'title' => 'Mahasiswa',
            ],
            [
                'id'    => 5,
                'title' => 'Karyawan',
            ],
        ];

        Role::insert($roles);
    }
}
