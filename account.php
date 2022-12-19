 

<?php 
include 'init.php'; 
 
//$users->loginStatus();
$userDetails = $users->getUserInfo();
include('inc/header.php');
?>
<title>webdamn.com : Demo User Management System </title>
<?php include('inc/container.php');?>
<div class="container contact">	
	<h2>Example: User Management System </h2>	
	<?php include('menus.php');?>
	<div class="table-responsive">		
		<div><span style="font-size:20px;">User Account Details:</span><div class="pull-right"><a href="edit_account.php">Edit Account</a></div>
		<table class="table table-boredered">		
			<tr>
				<th>Name</th>
				<td><?php echo $userDetails['name']; ?></td>
			</tr>
			<tr>
				<th>Email</th>
				<td><?php echo $userDetails['email']; ?></td>
			</tr>
			<tr>
				<th>Password</th>
				<td>**********</td>
			</tr>
			<tr>
				<th>Gender</th>
				<td><?php echo $userDetails['gender']; ?></td>
			</tr>
			<tr>
				<th>Mobile</th>
				<td><?php echo $userDetails['mobile']; ?></td>
			</tr> 		
		</table>
	</div>	
</div>	
<?php include('inc/footer.php');?>