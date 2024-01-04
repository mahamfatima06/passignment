<?php 
include('includes/header.php');
include('includes/navbar.php');
include('includes/sidebar.php');
include("../config.php")
?>

    <!-- main -->
    <main class="main-content-wrapper">
      <!-- container -->
      <div class="container">
        <!-- row -->
        <div class="row mb-8">
          <div class="col-md-12">
            <div class="d-md-flex justify-content-between align-items-center">
              <!-- page header -->
              <div>
                <h2>Add New Product</h2>
                  <!-- breacrumb -->
                  <nav aria-label="breadcrumb">
                  <ol class="breadcrumb mb-0">
                    <li class="breadcrumb-item"><a href="#" class="text-inherit">Dashboard</a></li>
                    <li class="breadcrumb-item"><a href="#" class="text-inherit">Products</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Add New Product</li>
                  </ol>
                </nav>
              </div>
              <br>
              
              <br>
              <!-- button -->
              <div>
                <a href="products.php" class="btn btn-light">Back to Product</a>
              </div>
            </div>

          </div>
        </div>
        <!-- row -->
        <div class="row">

          <div class="col-lg-12 col-12">
            <!-- card -->
            
            <div class="card mb-6 card-lg">
              <!-- card body -->
              <form id="pform">
              <div class="card-body p-6 ">
                <h4 class="mb-4 h5">Product Information</h4>
                <div class="row">
                  <!-- input -->
                  <div class="mb-3 col-lg-6">
                    <label class="form-label">Title</label>
                    <input name="pname" id="pname" type="text" class="form-control" placeholder="Product Name" required>
                  </div>
                  <!-- input -->
                  <?php 
                      $insert = "SELECT * from `category`";
                      $result = mysqli_query($connection, $insert);
                      if($result){
                          if(mysqli_num_rows($result) > 0){
                      ?>
                  <div class="mb-3 col-lg-6">
                    <label class="form-label">Product Category</label>
                    <select name="pcategory" class="form-select">
                      <option selected>Product Category</option>
                      <?php 
                     while($pro = mysqli_fetch_assoc($result)){
                echo '<option value="'.$pro['catid'].'">'. $pro['catname'].'</option>';
          
                     }
                    }
                }
              ?>
                    </select>
                  </div>
                  <!-- input -->
                  <div class="mb-3 col-lg-6">
                    <label class="form-label">price</label>
                    <input name="pprice" id="pprice" type="number" class="form-control" placeholder="price" required>
                  </div>
                  <!-- input -->
                  <div class="mb-3 col-lg-6">
                    <label class="form-label">Status</label>
                    <select name="pstatus" id="status" class="form-select">
                      <option selected>select Status</option>
                      <option value="1">active</option>
                      <option value="2">disable</option>
                    
                    </select>
                  </div>
                  <div class="mb-3 col-lg-6">
                    <label class="form-label">Weight</label>
                    <input name="pweight" id="pweight" type="number" class="form-control" placeholder="Weight" required>
                  </div>
                  <div>
                    <div class="mb-3 col-lg-12 mt-5">
                      <!-- heading -->
                      <h4 class="mb-3 h5">Product Images</h4>

                      <!-- input -->
                      <form action="#" class="d-block dropzone border-dashed rounded-2 ">
                        <div class="fallback">
                          <input id="pimage" name="pimage" type="file" multiple>
                        </div>
                      </form>
                      <br>
                      
                    </div>
                  </div>
                  <!-- input -->
                  <input type="submit" value="add products" class="btn btn-primary">
                </div>
            
              </div>
              </form>
            </div>
          

          </div>
      

        </div>
      </div>
    </main>

  </div>

  <?php 

include('includes/footer.php');
?>
<!-- jquery Ajax -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script src="ajax/pro.js"></script>