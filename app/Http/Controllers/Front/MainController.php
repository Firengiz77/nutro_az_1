<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Contact;
use App\Models\Messages;
use App\Models\Category;
use App\Models\Product;
use App\Models\Slider;

use View;
use App\Http\Requests\MessagesRequest;

use Illuminate\Support\Facades\Mail;

class MainController extends Controller
{
    public function __construct(){
        $contacts = Contact::first();
        $categories =  Category::get();
        View::share('contacts',$contacts);
        View::share('categories',$categories);
    }

    public function index(){
        $products =  Product::get();
        $sliders= Slider::get();
        return view('front.view.index',compact('products','sliders'));
    }

    public function contact(){
        $contact = Contact::first();
        return view('front.view.contact',compact('contact'));
    }

    public function single($slug1,$slug2){
        $category = Category::where('slug',$slug1)->first();
        $product = Product::where('slug',$slug2)->first();
        $gallery = Product::where('slug',$slug2)->get();
        $all = Product::orderBy('created_at','desc')->take(3)->get();
        return view('front.view.single',compact('product','all','gallery'));
    }
    public function category($slug){
        $category = Category::where('slug',$slug)->first();
        $products = Product::where('category_id',$category->id)->get();
    return view('front.view.category',compact('products','category'));
    }

    public function products(){
        $products = Product::get();
         return view('front.view.products',compact('products'));
    }
    public function about(){
        return view('front.view.about');
    }
    public function keyfiyyet(){

        return view('front.view.quality');
    }

    public function sendmail(Request $request,MessagesRequest $request2){
        $valiator = $request2->validated();
        $messagess = Messages::create($request2->all());
        $messagess->save();

            $request->validate([
                'name'=>'required',
                'email'=>'required',
                'msg'=>'required',
                
            ]);
            
            $response = Http::asForm()->post('https://www.google.com/recaptcha/api/siteverify', [
                'secret' => config('services.recaptcha.secret_key'),
                'response' => $request->get('g-recaptcha-response'),
                'remoteip' => $request->getClientIp(),
            ]);
            
            if (! $response->json('success')) {
                throw ValidationException::withMessages(['g-recaptcha-response' => 'Error verifying reCAPTCHA, please try again.']);
            }
        
            $email='firengizsariyeva77@gmail.com'; 
            $array = [
           'name'=> $request->name,
           'email'=> $request->email,   
           'msg'=>$request->msg
         ]; 
          Mail::send('front.sendmail', $array,  function ($message) use($email)  {
              $message->to( $email, 'Nutro az');
              $message->subject('Nutro Az');
              toastr()->success('Email has been send successfully');
          });  
          return redirect()->back();
         
    
        }






}
