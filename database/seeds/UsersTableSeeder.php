<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        factory(App\User::class, 5)->create( 
		    array(
                'password' => bcrypt('password'),
                'contact_number' => rand(1111111111,9999999999)
            )
		);
    }
}
