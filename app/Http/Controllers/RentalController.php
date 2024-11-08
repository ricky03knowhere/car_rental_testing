<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Rental;
use App\Models\Car;
use App\Models\User;
use Carbon\Carbon;

class RentalController extends Controller
{
    public function index()
    {
        $rentals = Rental::with(['users', 'cars'])->get();
        return view('rentals.index', compact('rentals'));
    }

    public function create()
    {
        $users = User::all();
        $cars = Car::where('is_available', true)->get();
        return view('rentals.create', compact('users', 'cars'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'user_id' => 'required|exists:users,id',
            'car_id' => 'required|exists:cars,id',
            'start_date' => 'required|date|after_or_equal:today',
            'end_date' => 'required|date|after:start_date',
        ]);

        $car = Car::findOrFail($request->car_id);

        // Mark the car as unavailable
        $car->is_available = false;
        $car->save();

        $startDate = Carbon::parse($request->start_date);
        $endDate = Carbon::parse($request->end_date);
        $days = $startDate->diffInDays($endDate);
        $totalCost = $days * $car->daily_rate;

        Rental::create([
            'user_id' => $request->user_id,
            'car_id' => $request->car_id,
            'start_date' => $request->start_date,
            'end_date' => $request->end_date,
            'total_cost' => $totalCost,
            'status' => 'active',
        ]);

        return redirect()->route('rentals.index')->with('success', 'Mobil berhasil dirental!');
    }

    public function show($id)
    {
        $rental = Rental::with(['users', 'cars'])->findOrFail($id);
        return view('rentals.show', compact('rental'));
    }

    public function destroy($id)
    {
        $rental = Rental::findOrFail($id);

        $car = $rental->car;
        // $car->is_available = true;
        $car->save();

        $rental->delete();

        return redirect()->route('rentals.index')->with('success', 'Rental berhasil dihapus!');
    }
}