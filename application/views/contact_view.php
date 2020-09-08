<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>Request Anime</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	<link rel="shorcut icon" href="<?php echo base_url().'theme/images/icon.png'?>">
	<!-- Font -->
	<link href="https://fonts.googleapis.com/css?family=Encode+Sans+Expanded:400,600,700" rel="stylesheet">
	<!-- Stylesheets -->

	<link href="<?php echo base_url().'theme/plugins/bootstrap.css'?>" rel="stylesheet">
	<link href="<?php echo base_url().'theme/fonts/ionicons.css'?>" rel="stylesheet">
	<link href="<?php echo base_url().'theme/common/styles.css'?>" rel="stylesheet">
	
</head>
<body>
	
	<?php echo $header;?>
	
	
	<section class="ptb-0">
		<div class="mb-30 brdr-ash-1 opacty-5"></div>
	</section>
	
	
	<section>
		<div class="container">
			<div class="row">
			
				<div class="col-sm-12 col-md-8">
					<h3><b>REQUEST ANIME</b></h3><br/>
						<?php echo $this->session->flashdata('msg');?>
					<form class="form-block form-bold form-mb-20 form-h-35 form-brdr-b-grey pr-50 pr-sm-0" action="<?php echo site_url('contact/send');?>" method="post">
						<div class="row">
						
							<div class="col-sm-6">
								<p class="color-ash">Full Name*</p>
								<div class="pos-relative">
									<input class="pr-20" name="name" type="text" required>
									<i class="dplay-none abs-tbr lh-35 font-13 color-green ion-android-done"></i>
								</div><!-- pos-relative -->
							</div><!-- col-sm-6 -->
							
							<div class="col-sm-6">							
								<p class="color-ash">Email*</p>
								<div class="pos-relative">
									<input class="pr-20" name="email" type="email" required>
									<i class="dplay-none abs-tbr lh-35 font-13 color-green ion-android-done"></i>
								</div><!-- pos-relative -->
							</div><!-- col-sm-6 -->
							
							<div class="col-sm-12">	
								<p class="color-ash">Subject*</p>
								<div class="pos-relative">
									<input class="pr-20" name="subject" type="text" required>
									<i class="dplay-none abs-tbr lh-35 font-13 color-green ion-android-done"></i>
								</div><!-- pos-relative -->
							</div><!-- col-sm-6 -->
							
							<div class="col-sm-12">
								<div class="pos-relative pr-80">
									<p class="color-ash">Message*</p>
									<textarea class="mb-0" name="message" required></textarea>
									<button class="abs-br font-20 plr-15 btn-fill-primary" type="submit"><i class="ion-ios-paperplane"></i></button>
								</div><!-- pos-relative -->
							</div><!-- col-sm-6 -->
							
						</div><!-- row -->
					</form>
				</div><!-- col-md-6 -->
				
				<div class="col-sm-12 col-md-4">

				<div>
					<h4 class="p-title"><b>SEARCH ANIME</b></h4>
				
					<form method="get" class="form-inline" action="<?php echo site_url('search');?>">
						<div class="form-group mx-sm-3 mb-2">
								<input type="text" class="form-control" style="margin-left: -15px;" name="search_query" placeholder="Search here" required>
						</div>
								<button type="submit" class="btn mb-2 border border-danger" style="background-color: #000; color: #fff;">Search</button>
							</form><br>
				</div>

				<div>
							<h4 class="p-title"><b>ANIME TERPOPULAR</b></h4>
							<?php foreach($popular_post->result() as $row):?>
							<a class="oflow-hidden pos-relative mb-20 dplay-block" href="<?php echo site_url('blog/'.$row->post_slug);?>">
								<div class="wh-100x abs-tlr"><img src="<?php echo base_url().'assets/images/thumb/'.$row->post_image;?>" alt=""></div>
								<div class="ml-120 min-h-100x">
									<h5><b><?php echo $row->post_title;?></b></h5>
									<h6 class="text-dark pt-10"><b>Releaase :</b> <?php echo date('d M Y',strtotime($row->post_date));?></h6>
								</div>
							</a><!-- oflow-hidden -->
							<?php endforeach;?>
							
						</div>
				
				</div><!-- col-md-6 -->
			</div><!-- row -->
		</div><!-- container -->
	</section>
	
	<?php echo $footer;?>
	
	<!-- SCIPTS -->
	<script src="<?php echo base_url().'theme/plugins/jquery-3.2.1.min.js'?>"></script>
	<script src="<?php echo base_url().'theme/plugins/tether.min.js'?>"></script>
	<script src="<?php echo base_url().'theme/plugins/bootstrap.js'?>"></script>
	<script src="<?php echo base_url().'theme/common/scripts.js'?>"></script>
	
</body>
</html>