@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        
        <div class="col-md-8">
            <div class="card">
                <div class="card-header" style="background: #186A18; color: #fff; text-align: center;">Product Inserted View</div>
                  @if (session('delete'))
                        <div class="alert alert-success" role="alert">
                            {{ session('delete') }}
                        </div>
                    @endif
                <div class="card-body">
                <table class="table">
					  <thead>
					    <tr>
					      <th scope="col">Product Name</th>
					      <th scope="col">Product Description</th>
					      <th scope="col">Product Price</th>
					      <th scope="col">Product Quantity</th>
					      <th scope="col">Alert Quantity</th>
					      <th scope="col">Update</th>
					      <th scope="col">Delete</th>
					    </tr>
					  </thead>
					  <tbody>
					  	@foreach($products as $value)
					    <tr>
					      <th>{{$value->product_name}}</th>
					      <td>{{$value->product_description}}</td>
					      <td>{{$value->product_price}}</td>
					      <td>{{$value->product_price}}</td>
					      <td>{{$value->alert_quantity}}</td>
					      <td>
					      <a class="btn btn-outline-success" href="{{url('/product/edit',$value->id)}}">Edit</a>
					      </td>
					      <td>
					      	<form action="{{url('/product/delete',$value->id)}}" method="post">
					      		@csrf
					      		<button class="btn btn-outline-danger">Delete</button>
					      	</form>
					      </td>
					    </tr>
					   @endforeach
					  </tbody>
					</table>
					{{$products->links()}}

                
                  
                    
                </div>
            </div>
        </div>


        <div class="col-md-4">
            <div class="card">
                <div class="card-header" style="background: #0078D7; color: #fff; text-align: center;">Product Insert</div>

                <div class="card-body">
                 

                    @if(session('status'))
                    <div class="alert alert-success">
                    	 {{ session('status') }}
                    </div>
                    @endif
                    



                    <form action="{{url('/product/insert')}}" method="post">
					  @csrf
					  <div class="form-group">
					    <label for="title">Product Title</label>
					    <input type="text" class="form-control" name="product_name" id="title" placeholder="Enter Product Title">
					  </div>

					  <div class="form-group">
					    <label for="description">Product Description</label>
					    <textarea name="product_description" class="form-control" id="description" cols="30" rows="5" placeholder="Enter Product Description"></textarea>
					    
					  </div>

					  <div class="form-group">
					    <label for="Price">Product Price</label>
					    <input type="text" class="form-control" name="product_price" id="Price" placeholder="Enter Product Price">
					  </div>

					  <div class="form-group">
					    <label for="quantity">Product Quantity</label>
					    <input type="text" class="form-control" name="product_quantity" id="quantity" placeholder="Enter Product Quantity">
					  </div>

					  <div class="form-group">
					    <label for="quantity">Alert Quantity</label>
					    <input type="text" class="form-control" name="alert_quantity" id="quantity" placeholder="Enter Alert Quantity">
					  </div>

					  
					  
					  
					  <button type="submit" class="btn btn-primary">Submit</button>
					</form>
                   
                </div>
            </div>
        </div>
    
    </div>
</div>
@endsection