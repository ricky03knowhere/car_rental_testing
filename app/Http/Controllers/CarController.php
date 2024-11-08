<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Car;

class CarController extends Controller
{
    // Display a listing of the cars
    public function index()
    {
        $cars = Car::all();
        return view('cars.index', compact('cars'));
    }

    // Show the form for creating a new car
    public function create()
    {
        return view('cars.create');
    }

    // Store a newly created car in the database
    public function store(Request $request)
    {
        $request->validate([
            'brand' => 'required|string|max:255',
            'model' => 'required|string|max:255',
            'plate_number' => 'required|string|max:255|unique:cars',
            'daily_rate' => 'required|numeric|min:0',
        ]);

        Car::create([
            'brand' => $request->brand,
            'model' => $request->model,
            'plate_number' => $request->plate_number,
            'daily_rate' => $request->daily_rate,
            'is_available' => true,
        ]);

        return redirect()->route('cars.index')->with('success', 'Mobil berhasil ditambahkan!');
    }

    // Show the details of a specific car
    public function show($id)
    {
        $car = Car::findOrFail($id);
        return view('cars.show', compact('car'));
    }

    // Show the form for editing a specific car
    public function edit($id)
    {
        $car = Car::findOrFail($id);
        return view('cars.edit', compact('car'));
    }

    // Update the specified car in the database
    public function update(Request $request, $id)
    {
        $request->validate([
            'brand' => 'required|string|max:255',
            'model' => 'required|string|max:255',
            'plate_number' => 'required|string|max:255|unique:cars,plate_number,' . $id,
            'daily_rate' => 'required|numeric|min:0',
        ]);

        $car = Car::findOrFail($id);
        $car->update([
            'brand' => $request->brand,
            'model' => $request->model,
            'plate_number' => $request->plate_number,
            'daily_rate' => $request->daily_rate,
        ]);

        return redirect()->route('cars.index')->with('success', 'Mobil berhasil diperbarui!');
    }

    // Remove the specified car from the database
    public function destroy($id)
    {
        $car = Car::findOrFail($id);
        $car->delete();

        return redirect()->route('cars.index')->with('success', 'Mobil berhasil dihapus!');
    }
}