@extends('layouts.app')

@section('content')
<div class="container">

    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Scores</div>
                
                <div class="panel-body">
                    <table class="table">
                        <tr>
                            <td>Number of wins</td>
                            <td>Number of losses</td>
                            <td>Average score</td>
                            <td>Highest score</td>
                            <td>Where</td>
                            <td>Against</td>
                        </tr>
                        <tr>
                            <td>{{ $wins[0]->win_count }}</td>
                            <td>{{ $losses[0]->losse_count }}</td>
                            <td>{{ $avg_score }}</td>
                            <td>{{ $high_score[0]->winner_score }}</td>
                            <td>{{ $high_score[0]->place }}</td>
                            <td>{{ $high_score[0]->name }}</td>
                        </tr>
                    </table>
                </div>

            </div>
        </div>
    </div>

</div>
@endsection
