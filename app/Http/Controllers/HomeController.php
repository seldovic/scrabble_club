<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;


class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home')->with('authUser', Auth::user());
    }

    public function score(Request $request)
    {
        $wins = DB::table('scores')
                     ->select(DB::raw('count(*) as win_count'))
                     ->where('winner_id', '=', Auth::id())
                     ->get();

        $losses = DB::table('scores')
                     ->select(DB::raw('count(*) as losse_count'))
                     ->where('losser_id', '=', Auth::id())
                     ->get();

        $avg_winner = DB::table('scores')
                     ->select(DB::raw('AVG(winner_score) as avg_win'))
                     ->where('winner_id', '=', Auth::id())
                     ->get();

        $avg_losser = DB::table('scores')
                     ->select(DB::raw('AVG(losser_score) as avg_losse'))
                     ->where('losser_id', '=', Auth::id())
                     ->get();

        $avg_score = $avg_winner[0]->avg_win + $avg_losser[0]->avg_losse / 2;


        $high_score = DB::select('
            SELECT a.id, a.winner_score, a.place, users.name
            FROM scores a
            INNER JOIN (
                SELECT id, MAX(winner_score) winner_score
                FROM scores 
                WHERE winner_id = '.Auth::id().' 
                GROUP BY id
                ORDER BY winner_score DESC
                LIMIT 1
            ) b ON a.id = b.id AND a.winner_score = b.winner_score 
            INNER JOIN users
            ON a.losser_id=users.id; 
        ');



        return view('score')
            ->with('wins', $wins)
            ->with('losses', $losses)
            ->with('avg_score', $avg_score)
            ->with('high_score', $high_score);
    }
}
