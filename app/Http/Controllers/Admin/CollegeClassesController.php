<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\MassDestroyCollegeClassRequest;
use App\Http\Requests\StoreCollegeClassRequest;
use App\Http\Requests\UpdateCollegeClassRequest;
use App\CollegeClass;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class CollegeClassesController extends Controller
{
    public function index()
    {
        abort_if(Gate::denies('college_class_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $collegeClasses = CollegeClass::all();

        return view('admin.collegeClasses.index', compact('collegeClasses'));
    }

    public function create()
    {
        abort_if(Gate::denies('college_class_create'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('admin.collegeClasses.create');
    }

    public function store(StoreCollegeClassRequest $request)
    {
        $collegeClass = CollegeClass::create($request->all());

        return redirect()->route('admin.college-classes.index');
    }

    public function edit(CollegeClass $collegeClass)
    {
        abort_if(Gate::denies('college_class_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('admin.collegeClasses.edit', compact('collegeClass'));
    }

    public function update(UpdateCollegeClassRequest $request, CollegeClass $collegeClass)
    {
        $collegeClass->update($request->all());

        return redirect()->route('admin.college-classes.index');
    }

    public function show(CollegeClass $collegeClass)
    {
        abort_if(Gate::denies('college_class_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $collegeClass->load('classLessons', 'classUsers');

        return view('admin.collegeClasses.show', compact('collegeClass'));
    }

    public function destroy(CollegeClass $collegeClass)
    {
        abort_if(Gate::denies('college_class_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $collegeClass->delete();

        return back();
    }

    public function massDestroy(MassDestroyCollegeClassRequest $request)
    {
        CollegeClass::whereIn('id', request('ids'))->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}
