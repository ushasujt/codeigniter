<?php require_once($this->config->item('file_path').'/views/layout.php');?>
<body>

<div id="container">
	<h1>Welcome!</h1>

	<div id="body">
		<?php echo form_open($this->config->item('base_url').'signin/login');
		echo form_label('User Name :', 'u_name');
$data = array(
'name' => 'u_name',
'placeholder' => 'Please Enter User Name',
);
echo form_input($data);

$data = array(
'name' => 'u_pass',
'type'=>'password',
'placeholder' => 'Please Enter Password',
);
echo form_input($data);

		?>

<button type="submit" class="btn btn-primary">
Sign In</button>

<span><?php echo $message; ?></span>

<?php echo form_close(); ?>
		
	</div>

	
</div>

</body>
</html>