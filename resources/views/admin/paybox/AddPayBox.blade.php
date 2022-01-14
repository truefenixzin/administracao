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
                <h3 class="card-title">Casdastrar Caixa</h3>
            </div>

            <div class="card-body mx-auto">

                @error('success')
                <div class="alert alert-success alert-dismissible">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <h5><i class="icon fas fa-check"></i> Sucesso!</h5>
                    {{ $message }}
                </div>
                @enderror

                @error('cover')
                <div class="alert alert-danger alert-dismissible">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <h5><i class="icon fas fa-ban"></i> Ops algo deu errado!</h5>
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

                <form action="{{route('admin.paybox.store')}}" method="post" autocomplete="off"
                      enctype="multipart/form-data">
                    @csrf
                    <div class="form-group">
                        <div class="row">
                            <div class="col-12">
                                <label>Arquivo:</label>
                                <div class="form-input">
                                    <input type="file" class="form-control" name="cover">
                                </div>
                            </div>
                            <div class="col-12">
                                <label for="categories">Tipo:</label>
                                <select name="categories" id="categories" class="form-control">
                                    <option value="avon">Avon</option>
                                    <option value="digital multi">Digital - Multicarteiras </option>
                                    <option value="digital riachuelo">Digital - Riachuelo </option>
                                    <option value="financeiras">Financeiras</option>
                                    <option value="multicarteiras">Multicarteiras</option>
                                    <option value="riachuelo - esmeralda">Riachuelo - Esmeralda</option>
                                    <option value="riachuelo - ouro">Riachuelo - Ouro</option>
                                    <option value="riachuelo - prata">Riachuelo - Prata</option>
                                    <option value="riachuelo - bronze">Riachuelo - Bronze</option>
                                    <option value="riachuelo - Diamante">Riachuelo - Diamante</option>
                                    <option value="riachuelo - Platina">Riachuelo - Platina</option>
                                    <option value="preventiva">Preventiva</option>
                                </select>
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
