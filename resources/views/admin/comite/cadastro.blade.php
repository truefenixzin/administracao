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
                <h3 class="card-title">Cadastro Pauta Comitê</h3>
            </div>

            <div class="card-body">
                <form action="" method="post" autocomplete="off">
                    @csrf
                    <div class="form-group">
                        <label for="title">Título:</label>
                        <input type="text" class="form-control" id="title" name="title">
                    </div>

                    <div class="form-group">
                        <label for="subtitle">Situação:</label>
                        <textarea style="resize: none" class="form-control" rows="5" id="situation"
                                  name="situation"></textarea>
                    </div>

                    <div class="form-group">
                        <label for="description">Sugestão:</label>
                        <textarea style="resize: none" class="form-control" rows="5" id="sugestion"
                                  name="sugestion"></textarea>
                    </div>
                    <div class="text-center">
                        <button class="btn btn-lg btn-success ">Cadastrar</button>
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
