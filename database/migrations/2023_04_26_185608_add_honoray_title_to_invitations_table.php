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
            //$table->enum('honor_title', ['','معالي', 'سعادة', 'Mr', 'Your Excellency'])->default('')->nullable()->after('date');
            $table->enum('honor_title', ['معالي', 'سعادة', 'Mr', 'Your Excellency'])->nullable()->after('date');
            //enum('honor_title', ['معالي', 'سعادة', 'Mr', 'Your Excellency'])->default('Pending');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('invitations', function (Blueprint $table) {
            $table->dropColumn('honor_title');
        });
    }
};
