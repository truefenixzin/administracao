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
                <div class="row">
                    <div class="col-4">
                        <h3 class="card-title">Vizualisar Pauta Comitê</h3>
                    </div>
                    <div class="col-8 text-center">
                        <b>Criado por:</b> {{$postauthor->name}} <b>| Cadastrado
                            em:</b> {{date_format($post->created_at,'d/m/Y H:m:s')}} <b>|
                            Editado em:</b> {{date_format($post->updated_at,'d/m/Y H:m:s')}}
                    </div>
                </div>

            </div>

            <div class="card-body">
                <div class="form-group">
                    <label for="title">Título:</label>
                    <input type="text" class="form-control" id="title" name="title" value="{{$post->title}}" readonly>
                </div>

                <div class="form-group">
                    <label for="subtitle">Situação:</label>
                    <textarea style="resize: none" class="form-control" rows="5" id="situation"
                              name="situation" readonly>{{$post->situation}}</textarea>
                </div>

                <div class="form-group">
                    <label for="description">Sugestão:</label>
                    <textarea style="resize: none" class="form-control" rows="5" id="sugestion"
                              name="sugestion" readonly>{{$post->sugestion}}</textarea>
                </div>

                <div class="text-center">
                    <div class="row">

                        <div class="col-lg-4">
                            <a href="{{route('admin.posts.index')}}">
                                <button class="btn btn btn-primary ">Voltar</button>
                            </a>
                        </div>
                        <div class="col-lg-4">
                            <a href="{{route('admin.posts.edit', $post->id)}}">
                                <button class="btn btn btn-warning ">Editar</button>
                            </a>
                        </div>
                        <div class="col-lg-4">
                            <a href="{{route('admin.posts.index')}}">
                                <button class="btn btn btn-danger ">Excluir</button>
                            </a>
                        </div>
                    </div>
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
