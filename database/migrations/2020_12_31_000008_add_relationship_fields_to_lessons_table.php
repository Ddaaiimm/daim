<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddRelationshipFieldsToLessonsTable extends Migration
{
    public function up()
    {
        Schema::table('lessons', function (Blueprint $table) {
            $table->unsignedInteger('dosen_id');
            $table->foreign('dosen_id', 'dosen_fk_1001496')->references('id')->on('users');
            $table->unsignedInteger('class_id');
            $table->foreign('class_id', 'class_fk_1001508')->references('id')->on('college_classes');
        });
    }
}
