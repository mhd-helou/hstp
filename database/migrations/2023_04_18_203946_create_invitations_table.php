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
        Schema::create('invitations', function (Blueprint $table) {
            $table->id();
            $table->string('full_name');
            $table->integer('whatsapp_num');
            $table->boolean('is_whatsapp');
            $table->string('email');
            $table->string('sec_email');
            $table->string('authority');
            $table->string('position');
            $table->boolean('is_attendant');
            $table->char('req_status');
            $table->string('lang');
            $table->date('date');
            $table->foreignId('title_id')->constrained();
            $table->foreignId('category_id')->constrained();
            $table->foreignId('chair_id')->constrained();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('invitations');
    }
};
