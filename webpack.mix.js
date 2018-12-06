const config = require('./webpack.congig');

let mix = require('laravel-mix');

mix.sass('./src/assets/styles/main.scss', 'dist/css');
mix.copyDirectory('./src/assets/images', 'dist/images');
mix.copy('./index.html', 'dist');
