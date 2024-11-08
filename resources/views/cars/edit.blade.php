@extends('layouts.app')

@section('content')
 <div class="container">
  <h2>Edit Mobil</h2>

  @if ($errors->any())
   <div class="alert alert-danger">
    <ul>
     @foreach ($errors->all() as $error)
      <li>{{ $error }}</li>
     @endforeach
    </ul>
   </div>
  @endif

  <form action="{{ route('cars.update', $car->id) }}" method="POST">
   @csrf
   @method('PUT')

   <div class="form-group">
    <label for="brand">Merek</label>
    <input type="text" name="brand" class="form-control" value="{{ old('brand', $car->brand) }}" required>
   </div>

   <div class="form-group">
    <label for="model">Model</label>
    <input type="text" name="model" class="form-control" value="{{ old('model', $car->model) }}" required>
   </div>

   <div class="form-group">
    <label for="plate_number">Nomor Plat</label>
    <input type="text" name="plate_number" class="form-control" value="{{ old('plate_number', $car->plate_number) }}"
     required>
   </div>

   <div class="form-group">
    <label for="daily_rate">Tarif Harian (Rp)</label>
    <input type="number" name="daily_rate" class="form-control" step="0.01"
     value="{{ old('daily_rate', $car->daily_rate) }}" required>
   </div>

   <button type="submit" class="btn btn-primary mt-4">Perbarui Mobil</button>
   <a href="{{ route('cars.index') }}" class="btn btn-secondary mt-4">Batal</a>
  </form>
 </div>
@endsection
