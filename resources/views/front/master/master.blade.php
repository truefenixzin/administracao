<!doctype html>
<html lang="pt-br">
<head>
    <meta charset="utf-8">
    <title>Intranet - Pherfiltec</title>

    <!-- Bootstrap core CSS -->
    <link href="{{asset('assets/dist/css/bootstrap.min.css')}}" rel="stylesheet">
    <link rel="icon" href="assets/brand/logo.png"/>

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>


    <!-- Custom styles for this template -->
    <link href="{{asset('assets/dist/css/carousel.css')}}" rel="stylesheet">
</head>
<body>

<header>
    <nav class="navbar navbar-expand fixed-top bg-dark">
        <div class="container-fluid">
            <a class="text-white navbar-brand" href="{{route('front.home')}}">
                <img src="{{asset('assets/brand/logo.png')}}" alt="" width="30" height="24"
                     class="d-inline-block align-text-top">
                Pherfiltec
            </a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
                    aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse " id="navbarCollapse">
                <ul class="navbar-nav me-auto mb-2 mb-md-0">

                </ul>
                <ul class="navbar-nav me-4 mb-2 mb-md-0">
                    <li class="navbar-brand">
                        <a class="text-white nav-link active" aria-current="page" href="{{route('front.home')}}">Home</a>
                    </li>
                    <li class="navbar-brand">
                        <a class="text-white nav-link" href="{{route('front.paybox')}}">Caixa</a>
                    </li>
{{--                    <li class="navbar-brand">--}}
{{--                        <a class="text-white nav-link" href="#">Arquivos</a>--}}
{{--                    </li>--}}
                    <li class="navbar-brand">
                        <a class="nav-link" href="{{route('admin.login')}}" target="_blank">
                            <button class="btn btn-primary">Entrar</button>
                        </a>
                    </li>
                </ul>

            </div>
        </div>
    </nav>
</header>

<main>

@yield('content')


<!-- FOOTER -->
    <footer class="container">
        <p class="float-end"><a href="#" class="btn btn-outline-secondary">Voltar ao topo</a></p>
        <p>&copy; <strong> 2020 - {{date('Y')}} Pherfil | Pherfiltec - CNPJ: 03.079.700/0001-01</strong></p>
        <p>All Rights Reserved.</p>
    </footer>
</main>


<script src="{{asset('assets/dist/js/bootstrap.bundle.min.js')}}"></script>


</body>
</html>
