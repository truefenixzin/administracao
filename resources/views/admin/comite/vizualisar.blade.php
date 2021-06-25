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
                    <div class="col-8">
                        <h3 class="card-title">Vizualisar Pauta Comitê</h3>
                    </div>
                    <div class="col-3">
                        <b>Criado por:</b> {{strtoupper($post->autor->name)}} <b>
                    </div>
                    <div class="col-1">
                        <a href="{{route('admin.posts.index')}}">
                            <button class="btn btn-primary">Lista</button>
                        </a>
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

                <hr/>
                <div class="text-center">
                    <h1>Retornos</h1>
                </div>
                <hr/>

                <div class="row">
                    <div class="col-12">
                        @foreach($post->answers as $answer)
                        <div class="form-group">
                            <label for="description"><i>Respondido por:</i>{{$answer->autorcomentario->name}} </label><br/>
                            <label for="description"><i>Respondido em:</i> {{date_format($answer->created_at,'d/m/Y H:m:s')}}</label><br/>

                            <textarea style="resize: none" class="form-control" rows="5" id="sugestion"
                                      name="sugestion" readonly>{{$answer->answer}}</textarea>
                        </div>
                        @endforeach
                        <a href="{{route('admin.answers.show',$post->id)}}">Responder</a>
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
