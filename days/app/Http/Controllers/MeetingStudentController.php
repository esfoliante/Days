<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateCommunicationStudent;
use App\Http\Requests\CreateMeetingStudent;
use App\Models\Meeting;
use App\Models\MeetingStudent;
use App\Models\Notice;
use Illuminate\Http\Request;

class MeetingStudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return MeetingStudent[]|\Illuminate\Database\Eloquent\Collection|\Illuminate\Http\Response
     */
    public function index()
    {
        return MeetingStudent::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(CreateMeetingStudent $request)
    {

        $data = $request->validated();
        $meetingStudent = MeetingStudent::create($data);

        return $meetingStudent;

    }

    /**
     * Display the specified resource.
     *
     * @param $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return MeetingStudent::findOrFail($id);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $meetingStudent = MeetingStudent::findOrFail($id);
        $meetingStudent->update($request->all());

        return $meetingStudent;

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        $meetingStudent = MeetingStudent::findOrFail($id);
        $meetingStudent->delete();

    }
}
