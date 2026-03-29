<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddClosedReasonToTicketsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (!Schema::hasColumn('tickets', 'closed_reason')) {
            Schema::table('tickets', function (Blueprint $table) {
                $table->string('closed_reason')->nullable()->after('closedby_user');
            });
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        if (Schema::hasColumn('tickets', 'closed_reason')) {
            Schema::table('tickets', function (Blueprint $table) {
                $table->dropColumn('closed_reason');
            });
        }
    }
}
