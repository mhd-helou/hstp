<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /*** Run the migrations.*/
    public function up(): void
    {
        Schema::table('invitations', function (Blueprint $table) {
            $table->boolean('is_confirmed')->nullable()->after('honor_title');
            $table->boolean('is_internal')->after('req_status');
        });
    }
    /**** Reverse the migrations. */
    public function down(): void
    {
        Schema::table('invitations', function (Blueprint $table) {
            $table->dropColumn('is_confirmed');
            $table->dropColumn('is_internal');
        });
    }
};
