@extends('layouts.app')

@section('content')
 <div class="container">
  <h1>Manajemen Mobil</h1>
  <form action="{{ route('cars.search') }}" method="GET" class="mb-4">
   <div class="row">
    <div class="col-md-4">
     <input type="text" name="brand" class="form-control" placeholder="Cari Merek">
    </div>
    <div class="col-md-4">
     <input type="text" name="model" class="form-control" placeholder="Cari Model">
    </div>
    <div class="col-md-4">
     <button type="submit" class="btn btn-primary">Cari</button>
    </div>
   </div>
  </form>
  <a href="{{ route('cars.create') }}" class="btn btn-primary mb-3">Tambah Mobil Baru</a>
  <table class="table table-bordered">
   <thead>
    <tr>
     <th>#</th>
     <th>Brand</th>
     <th>Model</th>
     <th>Nomor Plat</th>
     <th>Tarif Harian</th>
     <th>Ketersediaan</th>
     <th>Aksi</th>
    </tr>
   </thead>
   <tbody>
    @foreach ($cars as $car)
     <tr>
      <td>{{ $loop->iteration }}</td>
      <td>{{ $car->brand }}</td>
      <td>{{ $car->model }}</td>
      <td>{{ $car->plate_number }}</td>
      <td>Rp {{ number_format($car->daily_rate, 2) }}</td>
      <td>{{ $car->is_available ? 'Tersedia' : 'Tidak Tersedia' }}</td>
      <td>
       <a href="{{ route('cars.edit', $car->id) }}" class="btn btn-warning btn-sm">Edit</a>
       <form action="{{ route('cars.destroy', $car->id) }}" method="POST" class="d-inline">
        @csrf
        @method('DELETE')
        <button type="submit" class="btn btn-danger btn-sm"
         onclick="return confirm('Apakah Anda yakin?')">Hapus</button>
       </form>
      </td>
     </tr>
    @endforeach
   </tbody>
  </table>
 </div>
@endsection
