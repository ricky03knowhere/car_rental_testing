@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Detail Rental Mobil</h2>

    <div class="card mb-3">
        <div class="card-header">
            Informasi Mobil
        </div>
        <div class="card-body">
            <p><strong>Merek:</strong> {{ $rental->cars?->brand }}</p>
            <p><strong>Model:</strong> {{ $rental->cars?->model }}</p>
            <p><strong>Nomor Plat:</strong> {{ $rental->cars?->plate_number }}</p>
            <p><strong>Tarif Harian:</strong> Rp {{ number_format($rental->cars?->daily_rate, 2) }}</p>
        </div>
    </div>

    <div class="card mb-3">
        <div class="card-header">
            Informasi Rental
        </div>
        <div class="card-body">
            <p><strong>Nama Penyewa:</strong> {{ $rental->users?->name }}</p>
            <p><strong>Tanggal Mulai:</strong> {{ $rental->start_date }}</p>
            <p><strong>Tanggal Selesai:</strong> {{ $rental->end_date }}</p>
            <p><strong>Status:</strong> {{ $rental->status }}</p>
            <p><strong>Total Biaya:</strong> Rp {{ number_format($rental->total_cost, 2) }}</p>
        </div>
    </div>

    <a href="{{ route('rentals.index') }}" class="btn btn-secondary">Kembali</a>
</div>
@endsection
