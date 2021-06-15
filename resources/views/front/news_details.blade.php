@extends('front.master.master')
@section('content')
    <div class="container marketing">
        <div class="row featurette">
            <div class="col-md-12 order-md-2">
                <h2 class="featurette-heading text-center">{{$new->title}}</h2>
                <hr>
            </div>
        </div>
        <div class="row featurette">
            <div class="col-md-6 offset-md-3">
                <img src="{{\Illuminate\Support\Facades\Storage::url($new->cover)}}"
                     class="featurette-image img-fluid mx-auto"
                     data-src="holder.js/500x500/auto"
                     alt="Generic placeholder image">
            </div>
        </div>
        <div class="row featurette">
            <div class="col-md-auto ">
                <br>
                {{print $new->description}}
            </div>
        </div>
        <hr class="featurette-divider">
    </div>
@endsection
