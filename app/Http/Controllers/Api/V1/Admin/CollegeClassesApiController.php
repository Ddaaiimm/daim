<?php

namespace App\Http\Controllers\Api\V1\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreCollegeClassRequest;
use App\Http\Requests\UpdateCollegeClassRequest;
use App\Http\Resources\Admin\CollegeClassResource;
use App\CollegeClass;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class CollegeClassesApiController extends Controller
{
    public function index()
    {
        abort_if(Gate::denies('college_class_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return new CollegeClassResource(CollegeClass::all());
    }

    public function store(StoreCollegeClassRequest $request)
    {
        $collegeClass = CollegeClass::create($request->all());

        return (new CollegeClassResource($collegeClass))
            ->response()
            ->setStatusCode(Response::HTTP_CREATED);
    }

    public function show(CollegeClass $collegeClass)
    {
        abort_if(Gate::denies('college_class_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return new CollegeClassResource($collegeClass);
    }

    public function update(UpdateCollegeClassRequest $request, CollegeClass $collegeClass)
    {
        $collegeClass->update($request->all());

        return (new CollegeClassResource($collegeClass))
            ->response()
            ->setStatusCode(Response::HTTP_ACCEPTED);
    }

    public function destroy(CollegeClass $collegeClass)
    {
        abort_if(Gate::denies('college_class_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $collegeClass->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}
