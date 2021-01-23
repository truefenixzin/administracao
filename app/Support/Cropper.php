<?php


namespace App\Support;


class Cropper
{
    public static function thumb(string $uri, int $width, int $height = null)
    {
        $cropper = new \CoffeeCode\Cropper\Cropper('../public/storage/slides/cache');
        $pathThumb = $cropper->make( '../public' . $uri, $width, $height);
        $file = 'cache/' . collect(explode('/', $pathThumb))->last();
        return $file;
        dd($file);
    }
}
