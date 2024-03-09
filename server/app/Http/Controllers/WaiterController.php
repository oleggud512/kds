<?php

namespace App\Http\Controllers;

use App\Models\Waiter;
use Illuminate\Http\Request;

class WaiterController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // TODO: REPLACE WITH REPOSITORY USING SQL
        $waiters = Waiter::all();
        return response()->json($waiters);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Waiter $waiter)
    {
        return response()->json($waiter);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Waiter $waiter)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Waiter $waiter)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Waiter $waiter)
    {
        //
    }
}
