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
                            <th>Título</th>
                            <th>Data cadastro</th>
                            <th>Autor</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($posts as $post)
                            <tr>
                                <td>{{$post->id}}</td>
                                <td><a href="{{route('admin.posts.show', $post->id)}}">{{$post->title}}</a></td>
                                <td>{{date_format($post->created_at,'d/m/Y H:m:s')}}</td>
                                <td>{{$post->autor->name}}</td>
                                <td>
                                    @can('edit')
{{--                                        <a href="{{route('admin.answers.show',$post->id)}}">--}}
{{--                                            <button class="btn btn btn-success ">Responder</button>--}}
{{--                                        </a> |--}}
                                        <a href="{{route('admin.posts.edit', $post->id)}}">
                                            <button class="btn btn btn-warning ">Editar</button>
                                        </a>
                                    @endcan
                                </td>
                            </tr>
                        @endforeach
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
