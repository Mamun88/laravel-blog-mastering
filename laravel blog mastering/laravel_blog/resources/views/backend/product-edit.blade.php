@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        
        <div class="col-md-8">
            <div class="card">
                <div class="card-header" style="background: #D5651C; color: #fff; text-align: center;">Product Update</div>

                <div class="card-body">
                 

                    @if(session('status'))
                    <div class="alert alert-success">
                    	 {{ session('status') }}
                    </div>
                    @endif
                    



                    <form action="{{url('/product/update')}}" method="post">
					  @csrf
					  <input type="hidden" name="product_id" value="{{$product->id}}">
					  <div class="form-group">
					    <label for="title">Product Title</label>
					    <input type="text" class="form-control" name="product_name" id="title" placeholder="Enter Product Title" value="{{$product->product_name}}">
					  </div>

					  <div class="form-group">
					    <label for="description">Product Description</label>
					    <textarea name="product_description" class="form-control" id="description" cols="30" rows="5" placeholder="Enter Product Description">{{$product->product_description}}</textarea>
					    
					  </div>

					  <div class="form-group">
					    <label for="Price">Product Price</label>
					    <input type="text" class="form-control" name="product_price" id="Price" placeholder="Enter Product Price" value="{{$product->product_price}}">
					  </div>

					  <div class="form-group">
					    <label for="quantity">Product Quantity</label>
					    <input type="text" class="form-control" name="product_quantity" id="quantity" placeholder="Enter Product Quantity" value="{{$product->product_quantity}}">
					  </div>

					  <div class="form-group">
					    <label for="quantity">Alert Quantity</label>
					    <input type="text" class="form-control" name="alert_quantity" id="quantity" placeholder="Enter Alert Quantity" value="{{$product->alert_quantity}}">
					  </div>

					  
					  
					  
					  <button type="submit" class="btn btn-success">Update</button>
					</form>
                   
                </div>
            </div>
        </div>
    
    </div>
</div>
@endsection