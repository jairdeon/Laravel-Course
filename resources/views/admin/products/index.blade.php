@extends('app')

@section('content')

    <h3>Produtos</h3>

    <hr>
        <a href="{{ route('admin/products/create') }}" class="btn btn-default">Adicionar Produto</a>
    <hr>

    <table class="table table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>Produto</th>
            <th>Categoria</th>
            <th>Ação</th>
        </tr>
        </thead>
        <tbody>
        @foreach($products as $product)
            <tr>
                <td>{{ $product->id }}</td>
                <td>{{ $product->name }}</td>
                <td>{{ $product->category->name }}</td>
                <td>
                    <a href="{{ route('admin/products/edit', ['id' => $product->id])}}" class="btn btn-default">Editar</a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>

    {!! $products->render() !!}

@endsection