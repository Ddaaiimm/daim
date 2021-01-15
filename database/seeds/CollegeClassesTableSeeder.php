<?php

use App\CollegeClass;
use Illuminate\Database\Seeder;

class CollegeClassesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $classes = [
            [
                'id' => 1,
                'name' => 'MI-VII'
            ],
            [
                'id' => 2,
                'name' => 'TI-VIIA-DATABASE'
            ],
            [
                'id' => 3,
                'name' => 'TI-VIIA-JARINGAN'
            ],
            [
                'id' => 4,
                'name' => 'TI-VIIB-DATABASE'
            ],
            [
                'id' => 5,
                'name' => 'TI-VIIB-JARINGAN'
            ],
            [
                'id' => 6,
                'name' => 'SI-VIIA'
            ],
            [
                'id' => 7,
                'name' => 'SI-VIIB'
            ]
        ];

        CollegeClass::insert($classes);
    }
}
