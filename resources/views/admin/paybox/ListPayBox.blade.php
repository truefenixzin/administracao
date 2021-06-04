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
                <h3 class="card-title">Gerenciamento dos caixas</h3>
            </div>

            <div class="card-body">
                <table class="table table-bordered text-center">
                    <thead>
                    <tr>
                        <th>Data Cadastro</th>
                        <th>Categoria</th>
                        <th>Arquivo</th>
                        <th>Ações</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($payboxes as $paybox)
                        <tr>
                            <td class="align-middle"><b>{{$paybox->created_at}}</b></td>
                            <td class="align-middle"><b>{{$paybox->categories}}</b></td>
                            <td class="align-middle "><a
                                    href="{{\Illuminate\Support\Facades\Storage::url($paybox->cover)}}">baixar
                                    arquivo</a></td>
                            <td>
                                <form action="{{route('admin.paybox.destroy', $paybox->id)}}" method="post">
                                    @csrf
                                    @method('DELETE')

                                    <button type="submit" class="btn btn-lg  bg-gradient-danger ">Excluir</button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>

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
