@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Tambah Rental Baru</h1>
    <form action="{{ route('rentals.store') }}" method="POST">
        @csrf
        <div class="form-group">
            <label for="user_id">Pilih Pengguna</label>
            <select name="user_id" id="user_id" class="form-control" required>
                @foreach($users as $user)
                    <option value="{{ $user->id }}">{{ $user->name }}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label for="car_id">Pilih Mobil</label>
            <select name="car_id" id="car_id" class="form-control" required>
                @foreach($cars as $car)
                    @if($car->is_available)
                        <option value="{{ $car->id }}">{{ $car->brand }} {{ $car->model }} - {{ $car->plate_number }}</option>
                    @endif
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label for="start_date">Tanggal Mulai</label>
            <input type="date" name="start_date" id="start_date" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="end_date">Tanggal Selesai</label>
            <input type="date" name="end_date" id="end_date" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-success mt-4">Simpan</button>
        <a href="{{ route('rentals.index') }}" class="btn btn-secondary mt-4">Kembali</a>
    </form>
</div>
@endsection
