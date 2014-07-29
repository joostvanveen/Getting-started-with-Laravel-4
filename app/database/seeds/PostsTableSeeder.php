<?php

// Composer: "fzaninotto/faker": "v1.3.0"
use Faker\Factory as Faker;

class PostsTableSeeder extends Seeder {

	public function run()
	{
		$faker = Faker::create();

		foreach(range(1, 10) as $index)
		{
			Post::create([
                'title' => $faker->sentence(),
                'body' => $faker->realtext(1000),
                'user_id' => rand(1, 5),
			]);
		}
	}

}