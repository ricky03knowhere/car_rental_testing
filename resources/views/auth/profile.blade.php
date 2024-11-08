@extends('layouts.app')

@section('content')
 <div class="container">
  <h2>Profil Pengguna</h2>

  <div class="card mb-3">
   <div class="card-header">
    Informasi Pengguna
   </div>
   <div class="card-body">
    <p><strong>Nama:</strong> {{ $user->name }}</p>
    <p><strong>Email:</strong> {{ $user->email }}</p>
    <p><strong>Alamat:</strong> {{ $user->address }}</p>
    <p><strong>Nomor Telepon:</strong> {{ $user->phone }}</p>
    <p><strong>Nomor SIM:</strong> {{ $user->license_number }}</p>
   </div>
  </div>

  <h2>Riwayat Rental</h2>

  @if ($rentals->isEmpty())
   <p>Tidak ada riwayat rental.</p>
  @else
   <div class="table-responsive">
    <table class="table table-bordered">
     <thead>
      <tr>
       <th>No</th>
       <th>Merek Mobil</th>
       <th>Model Mobil</th>
       <th>Tanggal Mulai</th>
       <th>Tanggal Selesai</th>
       <th>Status</th>
       <th>Total Biaya</th>
      </tr>
     </thead>
     <tbody>
      @foreach ($rentals as $key => $rental)
       <tr>
        <td>{{ $key + 1 }}</td>
        <td>{{ $rental->cars?->brand }}</td>
        <td>{{ $rental->cars?->model }}</td>
        <td>{{ $rental->start_date }}</td>
        <td>{{ $rental->end_date }}</td>
        <td>{{ $rental->status }}</td>
        <td>Rp {{ number_format($rental->total_cost, 2) }}</td>
       </tr>
      @endforeach
     </tbody>
    </table>
   </div>
  @endif

  <a href="{{ route('cars.index') }}" class="btn btn-secondary">Kembali ke Manajemen Mobil</a>
 </div>
@endsection
