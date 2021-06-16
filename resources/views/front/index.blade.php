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
        <!-- Inicio do carousel-->
        <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                @foreach($slides as $index => $slide)
                    <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="{{$index}}" aria-current="true"
                            aria-label="Slide {{$index}}"
                            @if($index === 0)
                            class="active " aria-current="true">
                        @endif
                    </button>
                @endforeach
            </div>
            <div class="carousel-inner">
                @foreach($slides as $index => $slide)
                    @if($index === 0)
                        <div class="carousel-item active">
                            <img src="{{\Illuminate\Support\Facades\Storage::url($slide->cover)}}"
                                 class="d-block w-100">
                        </div>
                    @endif
                    @if($index > 0)
                        <div class="carousel-item img-fluid">
                            <img src="{{\Illuminate\Support\Facades\Storage::url($slide->cover)}}"
                                 class="d-block w-100">
                        </div>
                    @endif
                @endforeach

            </div>
            <button class="carousel-control-prev " type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon bg-dark" aria-hidden="true"></span>
                <span class="visually-hidden bg-dark">Anterior</span>
            </button>
            <button class="carousel-control-next primary" type="button" data-bs-target="#myCarousel"
                    data-bs-slide="next">
                <span class="carousel-control-next-icon bg-dark" aria-hidden="true"></span>
                <span class="visually-hidden bg-dark">Proximo</span>
            </button>
        </div>
        <!-- Fim do carousel-->


        <!--Inicio do código de corpo-->
        <div class="container marketing">
            <!--Inicio dos destaques -->
            <div class="row">
                <hr>
                <h1 class="text-center">Destaques do mês</h1>
                <hr>

                @foreach($workers as $worker)
                    <div class="col-lg-4">
                        <img class="rounded-circle" src="{{\Illuminate\Support\Facades\Storage::url($worker->cover)}}"
                             alt="Generic placeholder image" width="140" height="140">
                        <h2>{{$worker->name}}</h2>
                        <p> {!!$worker->comments!!}</p>
                    </div><!-- /.col-lg-4 -->
                @endforeach
            </div>
            <hr>
            <!--Fim dos destaques -->

            <!-- COMEÇAM AS MENCIONADAS FEATUREZINHAS xD -->

            <h1 class="text-center">Noticias</h1>
            <hr>
            @foreach($news as $indexnews => $new)
                @if($indexnews%2 === 0)
                    <div class="row featurette">
                        <div class="col-md-5">
                            <img src="{{\Illuminate\Support\Facades\Storage::url($new->cover)}}"
                                 class="featurette-image img-fluid mx-auto"
                                 data-src="holder.js/500x500/auto"
                                 alt="Generic placeholder image">
                        </div>
                        <div class="col-md-7 auto-">
                            <h2 class="featurette-heading  text-center">{{$new->title}}</h2><br/>
                            <p class="lead">{!! $new->description !!}</p>
                            {{--                            <a href="{{route('front.shownew', $new->id)}}">Leia mais...</a>--}}
                        </div>
                    </div>
                    <hr class="featurette-divider">
                @endif
                @if($indexnews%2 != 0)
                    <div class="row featurette">
                        <div class="col-md-7 order-md-2">
                            <h2 class="featurette-heading">{{$new->title}}</h2>
                            <p class="lead">{!! $new->description !!}</p>
                            {{--                            <a href="{{route('front.shownew', $new->id)}}">Leia mais...</a>--}}
                        </div>
                        <div class="col-md-5 order-md-1">
                            <img src="{{\Illuminate\Support\Facades\Storage::url($new->cover)}}"
                                 class="featurette-image img-fluid mx-auto rounded d-block"
                                 data-src="holder.js/500x500/auto"
                                 alt="Generic placeholder image">
                        </div>
                    </div>

                    <hr class="featurette-divider">
                @endif
            @endforeach
        </div><!-- /.container -->
@endsection
