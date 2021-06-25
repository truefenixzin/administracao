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
                    <div class="col-lg-11">
                        <h3 class="card-title">Responder Pauta Comitê</h3>
                    </div>

                    <div class="col-lg-1">
                        <a href="{{route('admin.posts.index')}}">
                            <button class="btn btn-sm btn-primary">Lista</button>
                        </a>
                    </div>
                </div>
            </div>

            <div class="card-body">

                @error('success')
                <div class="alert alert-success alert-dismissible">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <h5><i class="icon fas fa-check"></i> Sucesso!</h5>
                    {{ $message }}
                </div>
                @enderror
                @error('error')
                <div class="alert alert-danger alert-dismissible">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <h5><i class="icon fas fa-ban"></i> Ops algo deu errado!</h5>
                    {{ $message }}
                </div>
                @enderror


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
                    <h1>Retorno</h1>
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
                    </div>
                </div>
                <form action="{{route('admin.answers.store')}}" method="post" autocomplete="off">
                    @csrf
                    <div class="row">

                        <div class="col-12">
                            <div class="form-group">
                                <label for="answer">Responder: </label>
                                <textarea style="resize: none" class="form-control" rows="5" id="answer"
                                          name="answer"></textarea>
                            </div>
                        </div>
                        <input type=hidden name=postid value="{{$post->id}}">
                    </div>

                    <div class="text-center">
                        <button type="submit" class="btn btn btn-success ">Responder</button>
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
