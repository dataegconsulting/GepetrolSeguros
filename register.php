<?php 
include 'init.php'; 
$message =  $users->register();
include('inc/header.php');
?>
<title> Demo User Management System </title>
<link rel="stylesheet" href="css/form.css" />
<script src="js/form.js"></script>
<?php include('inc/container.php');?>


	<section class="wizard-section">
		<div class="row no-gutters">
			<div class="col-lg-6 col-md-6">
				<div class="wizard-content-left d-flex justify-content-center align-items-center">
					<h1>Create Your Insurance Account</h1>
				</div>
			</div>
			<div class="col-lg-6 col-md-6">
				<div class="form-wizard">

					<form id="signupform" role="form" method="POST" action="">
					<?php if ($message != '') { ?>
						<div id="login-alert" class="alert alert-danger col-sm-12"><?php echo $message; ?></div>                            
					<?php } ?>
						<div class="form-wizard-header">
							<p>Fill all form field to go next step</p>
							<ul class="list-unstyled form-wizard-steps clearfix">
								<li class="active"><span>1</span></li>
								<li><span>2</span></li>
								<li><span>3</span></li>
								<li><span>4</span></li>
							</ul>
						</div>

						<fieldset class="wizard-fieldset show">
							<h5>Personal Information</h5>

							<div class="form-group">
								<input type="text" class="form-control wizard-required" name="name"  value="<?php if(!empty($_POST["name"])) { echo $_POST["name"]; } ?>" >
								<label for="name" class="wizard-form-text-label"> Nombre y Apellidos* </label>
								<div class="wizard-form-error"></div>
							</div>

							<div class="form-group">

							

								Gender
								<div class="wizard-form-radio">
									<input type="radio" name="gender" <?php if (isset($gender) && $gender=="hombre") echo "checked";?>  value="hombre"> 
									<label for="gender">Hombre</label>
								</div>
								<div class="wizard-form-radio">
								<input type="radio" name="gender" <?php if (isset($gender) && $gender=="mujer") echo "checked";?>  value="mujer">  
									<label for="gender">Mujer</label>
								</div>
							</div> 

							<div class="form-group clearfix">
								<a href="javascript:;" class="form-wizard-next-btn float-right">Next</a>
							</div>
						</fieldset>	

						<fieldset class="wizard-fieldset">
							<h5>Account Information</h5>

							<div class="form-group">
								<input type="email" class="form-control wizard-required" name="email" value="<?php if(!empty($_POST["email"])) { echo $_POST["email"]; } ?>" >
								<label for="email" class="wizard-form-text-label">Email*</label>
								<div class="wizard-form-error"></div>
							</div>
							
							<div class="form-group">
								<input type="password" class="form-control wizard-required" name="passwd">
								<label for="pwd" class="wizard-form-text-label">Password*</label>
								<div class="wizard-form-error"></div>
								<span class="wizard-password-eye"><i class="far fa-eye"></i></span>
							</div> 

							<div class="form-group clearfix">
								<a href="javascript:;" class="form-wizard-previous-btn float-left">Previous</a>
								<a href="javascript:;" class="form-wizard-next-btn float-right">Next</a>
							</div>
						</fieldset>	

						<fieldset class="wizard-fieldset">
							<h5>Bank Information</h5>
							<div class="form-group">
								<input type="text" class="form-control wizard-required" name="mobile" value="<?php if(!empty($_POST["mobile"])) { echo $_POST["mobile"]; } ?>" > 
								<label for="mobile" class="wizard-form-text-label">Mobile*</label>
								<div class="wizard-form-error"></div>
							</div>
							
							<div class="form-group clearfix">
								<a href="javascript:;" class="form-wizard-previous-btn float-left">Previous</a>
								<button id="btn-signup" type="submit" name="register" value="register" class="btn btn-info"><i class="icon-hand-right"></i> &nbsp Register</button>
								<a href="javascript:;" type="submit" name="register" value="register" class="form-wizard-submit float-right" id="btn-signup"> Register  </a>
							</div>
						</fieldset>	 

					</form>
				</div>
			</div>
		</div>
	</section>

 

<?php include('inc/footer.php');?>