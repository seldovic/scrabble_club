<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class EditController extends Controller
{
    public function index(Request $request)
    {
        $user = Auth::user();

		$user->name = $request->name;

		$user->contact_number = $request->number;

		$user->save();

        return back();
    }
}
