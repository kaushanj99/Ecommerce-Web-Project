<?php  
    
    $active='Details';
    include("includes/header.php")

?>
    
    <div id="content"><!-- #content Begin -->
        <div class="container"><!-- container Begin -->
            <div class="col-md-12"><!-- col-md-12 Begin -->
                
                <ul class="breadcrumb"><!-- breadcrumb Begin -->
                    <li>
                        <a href="index.php">Home</a>
                    </li>
                    <li>
                        Shop
                    </li>
                    
                    <li>
                        <a href="shop.php?p_cat=<?php echo $p_cat_id; ?>"><?php echo $p_cat_title; ?></a>
                        
                    </li>
                    <li> <?php echo $pro_title; ?> </li>
                </ul><!-- breadcrumb Finish -->
                
            </div><!-- col-md-12 Finish -->
            
            <div class="col-md-3"><!-- col-md-3 Begin -->
                
            <?php
    
                include("includes/sidebar.php");
    
            ?>
    
                
            </div><!-- col-md-3 Finish -->
            
            
            <div class="col-md-9"><!-- col-md-9 Begin -->
                <div id="productMain" class="row"><!-- row Begin -->
                    <div class="col-sm-6"><!-- col-sm-6 Begin -->
                        <div id="mainImage"><!-- #mainImage Begin -->
                            <div id="myCarousel" class="carousel slide"><!-- carousel slide Begin -->
                                <ol class="carousel-indicators"><!-- carousel-indicators Begin -->
                                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                    <li data-target="#myCarousel" data-slide-to="1"></li>
                                    <li data-target="#myCarousel" data-slide-to="2"></li>
                                </ol><!-- carousel-indicators Finish -->
                                
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <center><img class="img-responsive" src="admin_area/product_images/<?php echo $pro_img1; ?>" alt="Product 1a"></center>
                                    </div>
                                    <div class="item">
                                        <center><img class="img-responsive" src="admin_area/product_images/<?php echo $pro_img2; ?>" alt="Product 1b"></center>
                                    </div>
                                    <div class="item">
                                        <center><img class="img-responsive" src="admin_area/product_images/<?php echo $pro_img3; ?>" alt="Product 1c"></center>
                                    </div>
                                </div>
                                
                                <a href="#myCarousel" class="left carousel-control" data-slide="prev"><!-- left carousel-control Begin -->
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                    <span class="sr-only">Previous</span>
                                </a><!-- left carousel-control Finish -->
                                 
                                <a href="#myCarousel" class="right carousel-control" data-slide="next"><!-- right carousel-control Begin -->
                                    <span class="glyphicon glyphicon-chevron-right"></span>
                                    <span class="sr-only">Next</span>
                                </a><!-- right carousel-control Finish -->
                                
                            </div><!-- carousel slide Finish -->
                        </div><!-- #mainImage Finish -->
                    </div><!-- col-sm-6 Finish -->
                    
                    <div class="col-sm-6"><!-- col-sm-6 Begin -->
                        <div class="box"><!-- box Begin -->
                            <h1 class="text-center"> <?php echo $pro_title; ?> </h1> <hr>
                            
                            <h4 class="text-center"> The Product Colors | <i class="fa fa-tag"></i>  <?php echo $pro_colors; ?> </h4> <hr>
                            
                            <h4 class="text-center"> The Product Sizes | <i class="fa fa-tag"></i>  <?php echo $pro_sizes; ?> </h4> <hr>
                            
                            <?php add_cart(); ?>
                            
                            <form action="details.php?add_cart=<?php echo $product_id; ?>" class="form-horizontal" method="post"><!-- form-horizontal Begin -->
                                <div class="form-group"><!-- form-group Begin -->
                                <label class="col-md-5 control-label">Product Quantity</label>
                                
                                <div class="col-md-7"><!-- col-md-7 Begin -->
                                       <select name="product_qty" id="" class="form-control"><!-- form-control Begin -->
                                       <option disabled selected>Select the quantity</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                        <option>6</option>
                                        </select><!-- form-control Finish -->
                                    </div><!-- col-md-7 Finish -->
                                
                                </div><!-- form-group Finish -->
                               
                                <div class="form-group"><!-- form-group Begin -->
                                <label class="col-md-5 control-label">Product Size</label>
                                        
                                       <div class="col-md-7"><!-- col-md-7 Begin -->
                                           
                                          <select name="product_size" class="form-control" required oninput="setCustomValidity('')" oninvalid="setCustomValidity('Must pick 1 size for the product')"><!-- form-control Begin -->
                                               
                                                <option disabled selected>Select the Size</option>
                                                <option>Standard</option>
                                                <option>Small</option>
                                                <option>Medium</option>
                                                <option>Large</option>
                                                <option>Extra Large</option>
                                        
                                           </select><!-- form-control Finish -->
                                           
                                       </div> <!-- col-md-7 Finish -->
                                 
                                </div><!-- form-group Finish -->
                                
                                 <div class="form-group"><!-- form-group Begin -->
                                <label class="col-md-5 control-label">Product Color</label>
                                        
                                       <div class="col-md-7"><!-- col-md-7 Begin -->
                                           
                                       <select name="product_color" class="form-control" required oninput="setCustomValidity('')" oninvalid="setCustomValidity('Must pick 1 size for the product')"><!-- form-control Begin -->
                                       <option disabled selected>Select the color</option>
                                        <option>Red</option>
                                        <option>Green</option>
                                        <option>Yellow</option>
                                        <option>Blue</option>
                                        <option>Black</option>
                                        <option>Gold</option>
                                        <option>Silver</option>
                                        </select><!-- form-control Finish -->
                                           
                                       </div> <!-- col-md-7 Finish -->
                                 
                                </div><!-- form-group Finish -->
                            
                                <center>
                                <p class="price">LKR <?php echo $pro_price; ?></p>
                                </center>
                                <center>
                                <button class="btn btn-primary" style="border:1px solid black; margin-left:18px;">
                                     
                                        
                                <i class="fa fa-shopping-cart">
                                     Add To Cart
                                </i>
                                
                                </button>
                            
                                </center>
                            
                            </form><!-- form-horizontal Finish -->
                            
                        </div><!-- box Finish -->
                        
                        
                        <div class="row" id="thumbs"><!-- row Begin -->
                            
                            <div class="col-xs-4"><!-- col-xs-4 Begin -->
                                <a data-target="#myCarousel" data-slide-to="0" href="#" class="thumb"><!-- thumb Begin -->
                                    <img src="admin_area/product_images/<?php echo $pro_img1; ?>" alt="product 4" class="img-responsive">
                                </a><!-- thumb Finish -->
                            </div><!-- col-xs-4 Finish -->
                             <div class="col-xs-4"><!-- col-xs-4 Begin -->
                                <a data-target="#myCarousel" data-slide-to="1" href="#" class="thumb"><!-- thumb Begin -->
                                    <img src="admin_area/product_images/<?php echo $pro_img2; ?>" alt="product 5" class="img-responsive">
                                </a><!-- thumb Finish -->
                            </div><!-- col-xs-4 Finish -->
                             <div class="col-xs-4"><!-- col-xs-4 Begin -->
                                <a data-target="#myCarousel" data-slide-to="2" href="#" class="thumb"><!-- thumb Begin -->
                                    <img src="admin_area/product_images/<?php echo $pro_img3; ?>" alt="product 6" class="img-responsive">
                                </a><!-- thumb Finish -->
                            </div><!-- col-xs-4 Finish -->
                            
                        </div><!-- row Finish -->
                        
                    </div><!-- col-sm-6 Finish -->
                    
                </div><!-- row Finish -->
                
                <div class="box" id="details"><!-- box Begin -->
                   
                   <h4>Product Description</h4>
                    
                    <p>
                        
                       <?php echo $pro_desc; ?>
                        
                    </p>
                    
                    <!-- <h4>Size</h4>
                    
                    <ul>
                        <li>Small</li>
                        <li>Medium</li>
                        <li>Large</li>
                        <li>Extra Large</li>
                    </ul> -->
                    
                    <hr>
                    
                    
                </div><!-- box Finish -->
                
                
                <div id="row same-height-row"><!-- row same-height-row Begin -->
                    <div class="col-md-3 col-sm-6"><!-- col-md-3 col-sm-6 Begin -->
                        <div class="box same-height headline"><!-- box same-height headline Begin -->
                            <h3 class="text-center">Products You Maybe Like...!<hr>
                            <div class="icon"><!-- icon Begin -->
                            
                            <i class="fa fa-heart"></i>
                            
                        </div><!-- icon Finish --></h3>
                        </div><!-- box same-height headline Finish -->
                    </div><!-- col-md-3 col-sm-6 Finish -->
                    
                   <?php 
                    
                        $get_products = "select * from products order by rand() LIMIT 0,3";
                    
                        $run_products = mysqli_query($con,$get_products);
                    
                        while($row_products=mysqli_fetch_array($run_products)){
                            
                            $pro_id = $row_products['product_id'];
                            
                            $pro_title = $row_products['product_title'];
                            
                            $pro_img1 = $row_products['product_img1'];
                            
                            $pro_price = $row_products['product_price'];
                            
                            echo "
                                
                                <div class='col-md-3 col-sm-6 center-responsive'>
                                
                                    <div class='product same-height'>
                                        
                                        <a href='details.php?pro_id=$pro_id'>
                                        
                                            <img class='img-responsive' src='admin_area/product_images/$pro_img1'>
                                        
                                        </a>
                                        
                                        <div>
                                                <center>
                                                <h3> <a href='details.php?pro_id=$pro_id'> $pro_title </a> </h3>
                                                </center>
                                                <p class='price'> LKR $pro_price </p>
                                        
                                        </div>
                                        
                                    
                                    </div>
                                
                                </div>
                            
                            ";
                            
                            
                            
                        }
                    
                    
                    ?>
                    
                </div><!-- row same-height-row Finish -->
                
            </div><!-- col-md-9 Finish -->
            
            
        </div><!-- container Finish -->
    </div><!-- #content Finish -->
    
        <?php
    
        include("includes/footer.php");
    
        ?>
    
    
    
    <script src="js/jquery-331.min.js"></script>
    <script src="js/bootstrap-337.min.js"></script>
    
    
    
</body>
</html>
    