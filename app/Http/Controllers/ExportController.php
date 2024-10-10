<?php

namespace App\Http\Controllers;

use App\Exports\ExportNilai;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

class ExportController extends Controller
{
    public function export()
    {
        $categoryId = request('tableFilters.category_nilai_id.value');

        $date = now()->format('d-m-Y'); // format tanggal
        $filename = "nilai-{$date}.xlsx"; // nama file

        return Excel::download(new ExportNilai($categoryId), $filename);

        // return "Hello Export Category: $categoryId";
    }
}
