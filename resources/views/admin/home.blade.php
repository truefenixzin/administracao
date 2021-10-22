@extends('admin.master.master_admin')
@section('content')
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">

            </div>
            <div class="col-sm-6">

            </div>
        </div>
    </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

        <!-- Default box -->
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Intranet</h3>
            </div>

            <div class="card-body">
                <h2>Esse é o nosso calendário, não se esqueçam dos nossos encontros, sua participação é de suma
                    importância.</h2>
                <div class="text-center">
                    <img src="{{asset('site/img/calendario_comite.jpg')}}" class="img-fluid " alt="Responsive image">
                </div>
            </div>

            <!-- /.card-body -->
            <div class="card-footer text-center">
                Pherfil | Pherfiltec
            </div>
            <!-- /.card-footer-->
        </div>
        <!-- /.card -->

    </section>

@endsection
