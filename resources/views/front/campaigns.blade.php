@extends('front.master.master')
@section('content')
    <div class="container marketing">
        <!--Inicio dos destaques -->
        <div class="row">
            <h1 class="text-center"></h1>
            <div class="col-lg-4">
                <p></p>
            </div><!-- /.col-lg-4 -->
        </div>

        <hr/>
        <h1 class="text-center">Tabela de comissão</h1>
        <hr>
        <div class="text-center">
            @foreach($commission as $commission)
            <img src="{{\Illuminate\Support\Facades\Storage::url($commission->cover)}}" class="img-fluid " alt="Responsive image">
            @endforeach
        </div>
        <hr/>

        <!-- cmapanhas -->
        <h1 class="text-center">Campanhas</h1>
        <hr>
        @foreach($campaigns as $indexnews => $new)
            @if($indexnews%2 === 0)
                <div class="row featurette">
                    <div class="col-md-7 order-md-2">
                        <p>
                        <h2 class="featurette-heading  text-center">{{$new->title}}</h2></p><br/>
                        <p class="lead">{!! $new->description !!}</p>
                    </div>
                    <div class="col-md-5 order-md-1 align-self-center">
                        <img src="{{\Illuminate\Support\Facades\Storage::url($new->cover)}}"
                             class="featurette-image img-fluid mx-auto"
                             data-src="holder.js/500x500/auto"
                             alt="Generic placeholder image">

                    </div>
                </div>
                <hr>
            @endif
            @if($indexnews%2 != 0)
                <div class="row featurette">
                    <div class="col-md-7">
                        <h2 class="featurette-heading">{{$new->title}}</h2>
                        <p class="lead">{!! $new->description !!}</p>
                    </div>
                    <div class="col-md-5 align-self-center">
                        <img src="{{\Illuminate\Support\Facades\Storage::url($new->cover)}}"
                             class="featurette-image img-fluid mx-auto rounded"
                             data-src="holder.js/500x500/auto"
                             alt="Generic placeholder image">

                    </div>
                </div>
                <hr>
            @endif
        @endforeach
    </div><!-- /.container -->
@endsection
