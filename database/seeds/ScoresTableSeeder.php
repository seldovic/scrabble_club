<?php

use Illuminate\Database\Seeder;

class ScoresTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('scores')->insert([
            'winner_id' => 1,
            'losser_id' => 4,
            'place' => 'Coventry',
            'winner_score' => 345,
            'losser_score' => 231,
            'created_at' => '2016-11-27 06:00:02',
        ]);

        DB::table('scores')->insert([
            'winner_id' => 2,
            'losser_id' => 3,
            'place' => 'Manchester',
            'winner_score' => 363,
            'losser_score' => 54,
            'created_at' => '2016-11-22 06:21:12',
        ]);

        DB::table('scores')->insert([
            'winner_id' => 5,
            'losser_id' => 3,
            'place' => 'London',
            'winner_score' => 548,
            'losser_score' => 376,
            'created_at' => '2016-11-24 11:18:22',
        ]);

        DB::table('scores')->insert([
            'winner_id' => 1,
            'losser_id' => 5,
            'place' => 'Leeds',
            'winner_score' => 414,
            'losser_score' => 342,
            'created_at' => '2016-09-21 08:14:59',
        ]);

        DB::table('scores')->insert([
            'winner_id' => 4,
            'losser_id' => 3,
            'place' => 'Edinburgh',
            'winner_score' => 635,
            'losser_score' => 546,
            'created_at' => '2016-10-23 05:44:33',
        ]);
    }
}
