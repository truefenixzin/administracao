<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Rodrigo dos Santos">
    <meta name="author" content="Rodrigo dos Santos">
    <link rel="icon" href="{{asset('site/img/pherfil_logo.png')}}">
    <title>Pherfil - Intranet</title>
    <!-- Bootstrap core CSS -->
    <link href="{{asset('site/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
    <!-- Custom fonts for this template -->
    <link href="{{asset('site/vendor/fontawesome-free/css/all.min.css')}}" rel="stylesheet">
    <link href="{{asset('site/vendor/simple-line-icons/css/simple-line-icons.css')}}" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet"
          type="text/css">
    <!-- Custom styles for this template -->
    <link href="{{asset('site/css/landing-page.min.css')}}" rel="stylesheet">
    <link href="{{asset('site/css/carousel.css')}}" rel="stylesheet">
    <nav class="navbar navbar-light bg-light static-top">
        <div class="container">
            <a class="navbar-brand" href="">PHERFIL | PHERFILTEC</a>
            <a class="btn btn-primary" href="{{route('admin.login')}}">Login</a>
        </div>
    </nav>
</head>
<body>
<div class="bd-example">

    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            @foreach($slides as $index => $slide)
                <li data-target="#carouselExampleCaptions" data-slide-to="{{$index}}"
                    @if($index === 0)
                    class="active">
                    @endif
                </li>
            @endforeach
        </ol>
        <div class="carousel-inner">

            @foreach($slides as $index => $slide)
                @if($index === 0)
                    <div class="carousel-item active">
                        <img src="{{\Illuminate\Support\Facades\Storage::url($slide->cover)}}" class="d-block w-100"
                             alt="...">
                    </div>
                @endif
                @if($index > 0)
                    <div class="carousel-item">
                        <img src="{{\Illuminate\Support\Facades\Storage::url($slide->cover)}}" class="d-block w-100"
                             alt="...">
                    </div>
                @endif
            @endforeach
        </div>
        <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
</body>
<footer class="align-content-center text-center">
    <p class="text-muted small mb-4 mb-lg-0">&copy; PHERFIL | PHERFILTEC - {{date('Y')}}.
        <br/>All Rights Reserved.<br/>
        CNPJ: 03.079.700/0001-01</p>
</footer>
<!-- Bootstrap core JavaScript -->
<script src="{{asset('site/vendor/jquery/jquery.min.js')}}"></script>
<script src="{{asset('site/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
</html>
