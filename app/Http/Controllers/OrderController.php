<?php

namespace App\Http\Controllers;

use App\Order;
use Exception;
use Darryldecode\Cart\Cart;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try {


            $order = new Order();

            $order->order_number = uniqid('OrderNumber-');

            $order->shipping_fullname = $request->input('shipping_fullname');
            $order->shipping_state = $request->input('shipping_state');
            $order->shipping_city = $request->input('shipping_city');
            $order->shipping_address = $request->input('shipping_address');
            $order->shipping_phone = $request->input('shipping_phone');
            $order->shipping_zipcode = $request->input('shipping_zipcode');

            if(!$request->has('billing_fullname')) {
                $order->billing_fullname = $request->input('shipping_fullname');
                $order->billing_state = $request->input('shipping_state');
                $order->billing_city = $request->input('shipping_city');
                $order->billing_address = $request->input('shipping_address');
                $order->billing_phone = $request->input('shipping_phone');
                $order->billing_zipcode = $request->input('shipping_zipcode');
            }
            else {
                $order->billing_fullname = $request->input('billing_fullname');
                $order->billing_state = $request->input('billing_state');
                $order->billing_city = $request->input('billing_city');
                $order->billing_address = $request->input('billing_address');
                $order->billing_phone = $request->input('billing_phone');
                $order->billing_zipcode = $request->input('billing_zipcode');
            }

            $order->grand_total = \Cart::session(auth()->id())->getTotal();
            $order->item_count = \Cart::session(auth()->id())->getContent()->count();

            $order->user_id = auth()->id();

            $order->save();

            // dd('order created, $order');
            // save order items

            $cartItems = \Cart::session(auth()->id())->getContent();

            foreach($cartItems as $item) {
                $order->items()->attach($item->id, ['price'=> $item->price, 'quantity'=> $item->quantity]);

            }

            //payment
            if(request('payment_method') == 'mastercard') {
                //redirect to paypal
            return redirect()->route('mastercard.checkout', $order->id);

             }
            // empty cart
            \Cart::session(auth()->id())->clear();
            // send email to customer
            // take user to thank you page

            return "order completed, thank you for order";


        }catch (ValidationException $exception){

            throw $exception;

        }catch(Exception $e) {
            throw($e);
        }



    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function show(Order $order)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function edit(Order $order)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Order $order)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function destroy(Order $order)
    {
        //
    }
}
