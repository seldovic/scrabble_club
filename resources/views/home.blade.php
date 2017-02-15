@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    You are logged in!<br><br>

                    <form action="edit/{{ $authUser->id }}" method="POST">
                        {{ csrf_field() }}
                        <div class="form-group">
                            <label for="name" class="col-md-4 control-label">Name</label>
                            <input type="text" name="name" value="{{ $authUser->name }}" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="name" class="col-md-4 control-label">Contact Number</label>
                            <input type="text" name="number" value="{{ $authUser->contact_number }}" class="form-control">
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>

</div>
@endsection
