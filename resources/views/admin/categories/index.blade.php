@extends('app')

@section('content')

    <h3>Categorias</h3>

    <hr>
        <a href="{{ route('admin/categories/create') }}" class="btn btn-default">Adicionar Categoria</a>
    <hr>

    <table class="table table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Ação</th>
        </tr>
        </thead>
        <tbody>
        @foreach($categories as $category)
            <tr>
                <td>{{ $category->id }}</td>
                <td>{{ $category->name }}</td>
                <td>
                    <a href="{{ route('admin/categories/edit', ['id' => $category->id])}}" class="btn btn-default">Editar</a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>

    {!! $categories->render() !!}

@endsection