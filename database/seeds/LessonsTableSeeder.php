<?php

use App\Lesson;
use Illuminate\Database\Seeder;

class LessonsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $lessons = [
            [
                'id'         => 1,
                'dosen_id' => 5,
                'class_id'   => 1,
                'weekday'    => 1,
                'start_time' => '10:00',
                'end_time'   => '12:00',
            ],
            [
                'id'         => 2,
                'dosen_id' => 6,
                'class_id'   => 1,
                'weekday'    => 1,
                'start_time' => '12:00',
                'end_time'   => '14:00',
            ],
            [
                'id'         => 3,
                'dosen_id' => 4,
                'class_id'   => 1,
                'weekday'    => 1,
                'start_time' => '14:00',
                'end_time'   => '16:00',
            ],
            [
                'id'         => 4,
                'dosen_id' => 3,
                'class_id'   => 2,
                'weekday'    => 1,
                'start_time' => '14:00',
                'end_time'   => '16:00',
            ],
            [
                'id'         => 5,
                'dosen_id' => 3,
                'class_id'   => 1,
                'weekday'    => 2,
                'start_time' => '08:00',
                'end_time'   => '10:00',
            ],
            [
                'id'         => 6,
                'dosen_id' => 5,
                'class_id'   => 1,
                'weekday'    => 2,
                'start_time' => '10:00',
                'end_time'   => '12:00',
            ],
            [
                'id'         => 7,
                'dosen_id' => 4,
                'class_id'   => 1,
                'weekday'    => 2,
                'start_time' => '12:00',
                'end_time'   => '14:00',
            ],
            [
                'id'         => 8,
                'dosen_id' => 6,
                'class_id'   => 1,
                'weekday'    => 3,
                'start_time' => '10:00',
                'end_time'   => '12:00',
            ],
            [
                'id'         => 9,
                'dosen_id' => 2,
                'class_id'   => 1,
                'weekday'    => 3,
                'start_time' => '12:00',
                'end_time'   => '14:00',
            ],
            [
                'id'         => 10,
                'dosen_id' => 3,
                'class_id'   => 1,
                'weekday'    => 3,
                'start_time' => '14:00',
                'end_time'   => '16:00',
            ],
            [
                'id'         => 11,
                'dosen_id' => 2,
                'class_id'   => 1,
                'weekday'    => 4,
                'start_time' => '10:00',
                'end_time'   => '12:00',
            ],
            [
                'id'         => 12,
                'dosen_id' => 3,
                'class_id'   => 1,
                'weekday'    => 4,
                'start_time' => '12:00',
                'end_time'   => '14:00',
            ],
            [
                'id'         => 13,
                'dosen_id' => 4,
                'class_id'   => 1,
                'weekday'    => 4,
                'start_time' => '14:00',
                'end_time'   => '16:00',
            ],
            [
                'id'         => 14,
                'dosen_id' => 3,
                'class_id'   => 1,
                'weekday'    => 5,
                'start_time' => '08:00',
                'end_time'   => '10:00',
            ],
            [
                'id'         => 15,
                'dosen_id' => 2,
                'class_id'   => 1,
                'weekday'    => 5,
                'start_time' => '10:00',
                'end_time'   => '12:00',
            ],
            [
                'id'         => 16,
                'dosen_id' => 6,
                'class_id'   => 1,
                'weekday'    => 5,
                'start_time' => '12:00',
                'end_time'   => '14:00',
            ]
        ];

        Lesson::insert($lessons);
    }
}
