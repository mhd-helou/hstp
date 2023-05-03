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
        Schema::table('invitations', function (Blueprint $table) {
        $table->boolean('is_whatsapp')->nullable()->change();
        $table->string('sec_email')->nullable()->change();
        $table->string('authority')->nullable()->change();
        $table->string('position')->nullable()->change();
        $table->boolean('is_attendant')->nullable()->change();
        $table->char('req_status')->nullable()->change();
        $table->string('lang')->nullable()->change();
        $table->date('date')->nullable()->change();
        $table->foreignId('title_id')->nullable()->change();
        $table->foreignId('category_id')->nullable()->change();
    });
    }
    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
    }
};
