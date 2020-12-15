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
                <h3 class="card-title">Listagem de Pautas Cadastradas</h3>
            </div>

            <div class="card-body">
                <div class="card-body">
                    <table class="table table-bordered text-center">
                        <thead>
                        <tr>
                            <th style="width: 10px">#</th>
                            <th>Títlo</th>
                            <th>Situação</th>
                            <th>Sugestão</th>
                            <th>Editar / Excluir</th>
                        </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1.</td>
                                <td>Títulos teste</td>
                                <td>Situação teste</td>
                                <td>Sugestão teste</td>
                                <td>
                                    <button class="btn btn-large btn-warning">Editar</button>
                                    <button class="btn btn-large btn-danger">Excluir</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
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
