@extends('front.master.master')
@section('content')
    <div class="container marketing">
        <div class="row featurette">
            <div class="col-md-12 order-md-2">
                <h2 class="featurette-heading">Recurso quentinho saindo do forno!</h2><br/>
                <p class="lead"> Com as constantes mudanças que estamos tendo, agora o caixa é disponibilizado de
                    maneira digital!<br/>
                    Uma mudança simples que irá nos trazer redução de custo, agilidade na comunicação e ainda iremos
                    ajudar o meio ambiente, reduzindo o consumo de papel.
                </p>
            </div>
        </div>

        <div class="row featurette">
            <div class="col-md-12 order-md-2">
                <hr/>
                <table class="table table-bordered text-center">
                    <thead>
                    <tr>
                        <th>Data Cadastro</th>
                        <th>Categoria</th>
                        <th>Arquivo</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($payboxes as $paybox)
                        <tr>

                            <td class="align-middle">
                                <b>{{\Carbon\Carbon::parse($paybox->created_at)->format('d/m/Y H:i')}}</b></td>
                            <td class="align-middle"><span>{{strtoupper($paybox->categories)}}</span></td>
                            <td class="align-middle "><a target="_blank"
                                                         href="{{\Illuminate\Support\Facades\Storage::url($paybox->cover)}}">Clique
                                    aqui para abrir o caixa</a></td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>


            </div>
        </div>

    </div>
@endsection
