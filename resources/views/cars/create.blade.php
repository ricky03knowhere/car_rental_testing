@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Tambah Mobil Baru</h1>
    <form action="{{ route('cars.store') }}" method="POST">
        @csrf
        <div class="form-group">
            <label for="brand">Brand</label>
            <input type="text" name="brand" id="brand" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="model">Model</label>
            <input type="text" name="model" id="model" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="plate_number">Nomor Plat</label>
            <input type="text" name="plate_number" id="plate_number" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="daily_rate">Tarif Harian</label>
            <input type="number" name="daily_rate" id="daily_rate" class="form-control" min="0" required>
        </div>
        <button type="submit" class="btn btn-success mt-4">Simpan</button>
        <a href="{{ route('cars.index') }}" class="btn btn-secondary mt-4">Kembali</a>
    </form>
</div>
@endsection
