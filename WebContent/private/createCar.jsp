<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <script src="http://localhost:8080/PE4/jquery-1.8.2.js"></script>
  <script type="text/javascript" src="http://localhost:8080/PE4/jquery.validate.js"></script>
<style type="text/css">
* { font-family: Verdana; font-size: 96%; }
label { width: 10em; float: left; }
label.error { float: none; color: red; padding-left: .5em; vertical-align: top; }
p { clear: both; }
.submit { margin-left: 12em; }
em { font-weight: bold; padding-right: 1em; vertical-align: top; }
</style>
  <script>
  $(document).ready(function(){
    $("#createCarForm").validate({
    	  rules: {
    		  
    		  	modelnumber: 
    		  	{
    		      required: true,
				  minlength: 4
    		  	},
    		  	make: 
    		  	{
      		      required: true,
  				  minlength: 2
      		  	},
      		  	model: 
  		  		{
    		      required: true,
				  minlength: 2
    		  	},
      		  	type: 
  		  		{
    		      required: true,
				  minlength: 2
    		  	},
    		  	modelmanufacturer: 
  		  		{
    		      required: true,
				  minlength: 2
    		  	},
    		    price: 
    		    {
    		      required: true,
    		      range: [1, 10000]
    		    },
    		  	scale: 
    		  	{
      		      required: true,
      		      range: [2, 200]
      		    },
      		  	color: 
      		  	{
      		  	  minlength: 3
      		  	},
    		    weight: 
    		    {
         		  range: [10, 10000]
        		},
      			countrymanufacturer: 
      			{
    			  minlength: 3
      			},
        		countryproduction: 
        		{
        		  rangelength: [2, 2]
        		},
    			productionyear: 
    			{
                  required: true,
        		  range: [1900, 2012]
        	    }
    		  }
    		});
  });
  </script>
  
</head>
<body>
 <form class="cmxform" id="createCarForm" method="get" action="http://localhost:8080/PE4/CreateCar">
 <fieldset>
   <legend>Create a new car</legend>
   <p>
     <label for="modelnumber">Model number</label>
     <em>*</em><input id="modelnumber" name="modelnumber" size="25"/>
   </p>
   <p>
     <label for="make">Make</label>
     <em>*</em><input id="make" name="make" size="25"/>
   </p>
   <p>
     <label for="model">Model</label>
     <em>*</em><input id="model" name="model" size="25"/>
   </p>
   <p>
     <label for="type">Type</label>
     <em>*</em><input id="type" name="type" size="25"/>
   </p>
   <p>
     <label for="modelmanufacturer">Model manufacturer</label>
     <em>*</em><input id="modelmanufacturer" name="modelmanufacturer" size="25"/>
   </p>
   <p>
     <label for="price">Price ($)</label>
     <em>*</em><input id="price" name="price" size="25"/>
   </p>
   <p>
     <label for="scale">Scale (1:)</label>
     <em>*</em><input id="scale" name="scale" size="25"/>
   </p>   
   <p>
     <label for="color">Color</label>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="color" name="color" size="25"/>
   </p>      
   <p>
     <label for="weight">Weight (gram)</label>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="weight" name="weight" size="25"/>
   </p>      
   <p>
     <label for="countrymanufacturer">Country of manufacturer</label>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="countrymanufacturer" name="countrymanufacturer" size="25"/>
   </p> 
      <p>
     <label for="countryproduction">Country code of production</label>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="countryproduction" name="countryproduction" size="25"/>
   </p> 
      <p>
     <label for="productionyear">Production year</label>
     <em>*</em><input id="productionyear" name="productionyear" size="25"/>
   </p> 

   <p>
     <input class="submit" type="submit" value="Create car"/>
   </p>
 </fieldset>
 </form>
</body>
</html>