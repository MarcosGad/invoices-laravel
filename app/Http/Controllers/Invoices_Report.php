<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\invoices;

class Invoices_Report extends Controller
{
    public function index()
    {
       return view('reports.invoices_report');
    }

    public function Search_invoices(Request $request)
    {

        $rdio = $request->rdio;

        // في حالة البحث بنوع الفاتورة
        if ($rdio == 1) 
        {

            if($request->type == 'الكل')
            {
                // في حالة عدم تحديد تاريخ
                if ($request->type && $request->start_at =='' && $request->end_at =='') 
                {  
                    $invoices = invoices::select('*')->get();
                    $type = 'الكل';
                    return view('reports.invoices_report',compact('type'))->withDetails($invoices);
                }
                // في حالة تحديد تاريخ استحقاق
                else 
                {
                    $start_at = date($request->start_at);
                    $end_at = date($request->end_at);
                    $type = 'الكل';
                    
                    $invoices = invoices::whereBetween('invoice_Date',[$start_at,$end_at])->get();
                    return view('reports.invoices_report',compact('type','start_at','end_at'))->withDetails($invoices);
                }
            }
            else
            {
                // في حالة عدم تحديد تاريخ
                if ($request->type && $request->start_at =='' && $request->end_at =='') 
                {  

                    $invoices = invoices::select('*')->where('Status','=',$request->type)->get();
                    $type = $request->type;
                    return view('reports.invoices_report',compact('type'))->withDetails($invoices);

                }
                // في حالة تحديد تاريخ استحقاق
                else 
                {
                
                    $start_at = date($request->start_at);
                    $end_at = date($request->end_at);
                    $type = $request->type;
                    
                    $invoices = invoices::whereBetween('invoice_Date',[$start_at,$end_at])->where('Status','=',$request->type)->get();
                    return view('reports.invoices_report',compact('type','start_at','end_at'))->withDetails($invoices);
                
                }
            }
            
        } 
        
        // في حالة البحث برقم الفاتورة
        else 
        {  
            $invoices = invoices::select('*')->where('invoice_number','=',$request->invoice_number)->get();
            return view('reports.invoices_report')->withDetails($invoices);  
        }
     
    }
    
}