<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('facilities', function (Blueprint $table) {
                    $table->increments('id');
                    $table->unsignedInteger('facilities_id')->unique();
                    $table->string('category')->nullable();
                    $table->unsignedInteger('clients')->nullable();
                    $table->unsignedInteger('use')->nullable();
                    $table->longText('bio_data')->nullable();
                    $table->string('status')->nullable();
                    $table->foreign('facilities_id')->references('id')->on('users')->onDelete('cascade');
                    $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('facilities');
    }
};
