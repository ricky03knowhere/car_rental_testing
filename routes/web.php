<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\AuthController;
use App\Http\Controllers\CarController;
use App\Http\Controllers\RentalController;

// Authentication Routes
// Route::get('/', [CarController::class, 'index']);
Route::get('/', [AuthController::class, 'showLogin'])->name('login');
Route::get('/register', [AuthController::class, 'showRegister'])->name('register');
Route::post('/register', [AuthController::class, 'register']);
Route::get('/login', [AuthController::class, 'showLogin'])->name('login');
Route::post('/login', [AuthController::class, 'login']);
Route::post('/logout', [AuthController::class, 'logout'])->name('logout');

// Protected Routes
Route::middleware(['auth'])->group(function () {
    // Cars Routes
    Route::resource('cars', CarController::class);
    Route::get('/cars/search', [CarController::class, 'search'])->name('cars.search');
    
    // Rentals Routes
    Route::resource('rentals', RentalController::class);
    Route::get('/profile', [AuthController::class, 'profile'])->name('auth.profile');
});