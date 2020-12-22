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
                <h3 class="card-title">Subida de arquivos para os Slides</h3>
            </div>

            <div class="card-body">

                <form action="{{route('admin.slides.store')}}" method="post" autocomplete="off" enctype="multipart/form-data" >
                    @csrf
                    <div class="form-group">
                        <label for="title">Título:</label>
                        <input type="text" class="form-control" id="title" name="title">
                    </div>

                    <div class="form-group">
                        <div class="row">
                            <div class="col-6">
                                <label for="nome">Data Início:</label>
                                <input type="date" class="form-control" placeholder=".col-5" name="dtini">
                            </div>
                            <div class="col-6">
                                <label for="nome">Data Fim:</label>
                                <input type="date" class="form-control" placeholder=".col-5" name="dtfim">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label>Arquivo:</label>
                        <div class="input-group">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="exampleInputFile">
                                <label class="custom-file-label" for="exampleInputFile">Escolha seu arquivo</label>
                            </div>
                        </div>
                    </div>
                    <div class="text-center">
                        <button class="btn btn-lg btn-success bg-gradient-success ">Salvar</button>
                    </div>
                </form>

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
