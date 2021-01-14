<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Product;
use Faker\Generator as Faker;

$factory->define(Product::class, function (Faker $faker) {
    return [
        'name' => $this->faker->sentence(2),
        'description' => $this->faker->sentence(20),
        'price' => $this->faker->numberBetween(100, 5000),
    ];
});
