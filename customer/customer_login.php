<div class="box"><!-- box Begin -->
    
    <div class="box-header"><!-- box-header Begin -->
        
        <center><!-- center Begin -->
            
            <h1>Login</h1>
            
            <p class="lead"> Already you have Shopzygate account..? </p>
            
            <p class="text-muted"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempora quasi repudiandae cumque ab quae, commodi animi, voluptatum magni dignissimos deleniti, a nisi eum distinctio dicta laudantium unde ea dolorem tenetur?</p>
            
        </center><!-- center Finish -->
        
    </div><!-- box-header Finish -->
    
    <form method="post" action="checkout.php"><!-- form Begin -->
        
        <div class="form-group"><!-- form-group Begin -->
            
            <label> Your Email </label>
            
            <input name="c_email" type="text" class="form-control" required>
            
        </div><!-- form-group Finish -->
        
            <div class="form-group"><!-- form-group Begin -->
            
            <label> Your Password </label>
            
            <input name="c_pass" type="password" class="form-control" required>
            
        </div><!-- form-group Finish -->
        
        <div class="text-center"><!-- text-center Begin -->
            
            <p class="button"><button name="login" value="Login" class="btn btn-primary">
                
                <i class="fa fa-sign-in"></i> Login
                
            </button></p>
            
        </div><!-- text-center Finish -->
        
    </form><!-- form Finish -->
    
    <center><!-- center Begin -->
        
        <a href="customer_register.php">
            
            <h4> You don't have Shopzygate account..? Please, Register here </h4>
            
        </a>
        
    </center><!-- center Finish -->
    
</div><!-- box Finish -->


<?php 

    if(isset($_POST['login'])){
        
        $customer_email = $_POST['c_email'];
        
        $customer_pass = $_POST['c_pass'];
        
        $select_customer = "select * from customers where customer_email='$customer_email' AND customer_pass='$customer_pass'";
        
        $run_customer = mysqli_query($con,$select_customer);
        
        $get_ip = getRealIpUser();
        
        $check_customer = mysqli_num_rows($run_customer);
        
        $select_cart = "select * from cart where ip_add='$get_ip'";
        
        $run_cart = mysqli_query($con,$select_cart);
        
        $check_cart = mysqli_num_rows($run_cart);
        
        if($check_customer==0){
            
            echo "<script>alert('Your email or Password is incorrect')</script>";
            
            exit();
        }
        
        if($check_customer==1 AND $check_cart==0){
            
            $_SESSION['customer_email']=$customer_email;
            
            echo "<script>alert('You are successfully Logged in')</script>";
            
            echo "<script>window.open('customer/my_account.php?my_orders','_self')</script>";
            
        }else{
            
             $_SESSION['customer_email']=$customer_email;
            
            echo "<script>alert('You are successfully Logged in')</script>";
            
            echo "<script>window.open('checkout.php','_self')</script>";
        }
        
    }

?>