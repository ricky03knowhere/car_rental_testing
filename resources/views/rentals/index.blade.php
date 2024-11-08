@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Manajemen Rentals</h1>
    <a href="{{ route('rentals.create') }}" class="btn btn-primary mb-3">Tambah Rental Baru</a>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>#</th>
                <th>Nama Pengguna</th>
                <th>Mobil</th>
                <th>Tanggal Mulai</th>
                <th>Tanggal Selesai</th>
                <th>Status</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            @foreach($rentals as $rental)
            <tr>
                <td>{{ $loop->iteration }}</td>
                <td>{{ $rental->users?->name }}</td>
                <td>{{ $rental->cars?->brand }} - {{ $rental->cars?->model }}</td>
                <td>{{ $rental->start_date }}</td>
                <td>{{ $rental->end_date }}</td>
                <td>{{ $rental->status }}</td>
                <td>
                    <a href="{{ route('rentals.show', $rental->id) }}" class="btn btn-info btn-sm">Detail</a>
                    <form action="{{ route('rentals.destroy', $rental->id) }}" method="POST" class="d-inline">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Apakah Anda yakin?')">Hapus</button>
                    </form>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
