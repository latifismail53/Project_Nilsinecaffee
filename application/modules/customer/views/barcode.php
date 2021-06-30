<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title><?php $title ?></title>
</head>
<body>
	<div class="content-wrapper">
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h5>Pesan, Scan dan tunggu. Nikmati Layanan tanpa antri</h5>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><?php echo anchor(base_url(), 'Home'); ?></li>
							<li class="breadcrumb-item active">Order</li>
						</ol>
					</div>
					<div class="container mt-4">
						<center>
							<h1>BARCODE SAYA</h1>
							<img src="http://chart.googleapis.com/chart?chs=350x350&cht=qr&chl=Hello+world&chld=L|1&choe=UTF-8" >
							<h5 class="text-primary">TUNJUKAN BARCODE INI DI KASIR</h5>
						</center>
					</div>
					
				</div>
			</div>
		</section>
	</div>
</body>
</html>
