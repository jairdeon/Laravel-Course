@extends('app')

@section('content')

    <h3>Nova Categoria</h3>

    @include('errors/_check')

    {!! Form::open(['route' => 'admin/categories/store', 'method' => 'post']) !!}
        @include('admin/categories/_form')

    <div class="form-group">
        {!! Form::submit('Salvar', ['class' => 'btn btn-primary']) !!}
    </div>
    {!! Form::close() !!}

@endsection