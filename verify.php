
<?php 
include 'init.php'; 
$isVerified =  $users->verifyRegister();
include('inc/header.php');
?>
<title>Demo User Management </title>
<?php include('inc/container.php');?>
<div class="container contact">	
	<h2>Example: User Management </h2>	
	<div class="alert alert-success col-sm-12" >
		<?php if ($isVerified) { ?>
			Your registration verified successfuly. You can <a href="login.php">login</a> to access your account.
		<?php } else { ?>
			Invalid request.
		<?php } ?>
	</div>	
</div>
<?php include('inc/footer.php');?>