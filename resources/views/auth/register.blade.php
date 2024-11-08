@extends('layouts.app')

@section('content')
 <div class="container py-5">
  <div class="row justify-content-center">
   <div class="col-md-8">
    <div class="card">
     <div class="card-header">{{ __('Register') }}</div>

     <div class="card-body">
      <form method="POST" action="{{ route('register') }}">
       @csrf

       <div class="mb-3">
        <label for="name" class="form-label">{{ __('Name') }}</label>
        <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name"
         value="{{ old('name') }}" required autocomplete="name" autofocus>
        @error('name')
         <span class="invalid-feedback" role="alert">
          <strong>{{ $message }}</strong>
         </span>
        @enderror
       </div>

       <div class="mb-3">
        <label for="email" class="form-label">{{ __('Email Address') }}</label>
        <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email"
         value="{{ old('email') }}" required autocomplete="email">
        @error('email')
         <span class="invalid-feedback" role="alert">
          <strong>{{ $message }}</strong>
         </span>
        @enderror
       </div>

       <div class="mb-3">
        <label for="password" class="form-label">{{ __('Password') }}</label>
        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror"
         name="password" required autocomplete="new-password">
        @error('password')
         <span class="invalid-feedback" role="alert">
          <strong>{{ $message }}</strong>
         </span>
        @enderror
       </div>

       <div class="mb-3">
        <label for="password-confirm" class="form-label">{{ __('Confirm Password') }}</label>
        <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required
         autocomplete="new-password">
       </div>

       <div class="mb-3">
        <label for="address" class="form-label">{{ __('Address') }}</label>
        <textarea id="address" class="form-control @error('address') is-invalid @enderror" name="address" required>{{ old('address') }}</textarea>
        @error('address')
         <span class="invalid-feedback" role="alert">
          <strong>{{ $message }}</strong>
         </span>
        @enderror
       </div>

       <div class="mb-3">
        <label for="phone" class="form-label">{{ __('Phone Number') }}</label>
        <input id="phone" type="text" class="form-control @error('phone') is-invalid @enderror" name="phone"
         value="{{ old('phone') }}" required>
        @error('phone')
         <span class="invalid-feedback" role="alert">
          <strong>{{ $message }}</strong>
         </span>
        @enderror
       </div>

       <div class="mb-3">
        <label for="license_number" class="form-label">{{ __('License Number (SIM)') }}</label>
        <input id="license_number" type="text" class="form-control @error('license_number') is-invalid @enderror"
         name="license_number" value="{{ old('license_number') }}" required>
        @error('license_number')
         <span class="invalid-feedback" role="alert">
          <strong>{{ $message }}</strong>
         </span>
        @enderror
       </div>

       <div class="mb-0">
        <button type="submit" class="btn btn-primary">
         {{ __('Register') }}
        </button>
       </div>
      </form>
     </div>
    </div>
   </div>
  </div>
 </div>
@endsection