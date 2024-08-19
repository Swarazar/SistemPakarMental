<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Daftar Akun</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="fonts/linearicons/style.css">
		<link rel="stylesheet" href="vendor/date-picker/css/datepicker.min.css">
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body style="background-image: url('images/gambar.jpg');">
		
			<div class="inner">
				<form action="prosesregistrasi.php" method="post">
					<h3>Daftar Akun </h3>
				 	<?php if (isset($_GET['error'])) {echo 
                    "<div class='alert alert-danger alert-gradient alert-dismissible fade in' role='alert'>   
                        <strong style='color:red'>  Maaf, Data Yang Dimasukan Kurang Lengkap </strong> $_GET[error]
                        </div>";}
                        else { echo "";} ?>	
                        <br>
					<div class="form-row">
						<div class="form-wrapper">
							<label for="">ID User</label>
							<input name="id_user" type="text" id="id_user" class="form-control" placeholder="id admin" ; $b=rand(1000,10000); $c=$a.$b; echo $c; ?>
						</div>
						<div class="form-wrapper">
							<label for="">Nama User</label>
							<input type="Nama_user" name="Nama_user" class="form-control" id="Nama_user" placeholder="Masukan Nama " autocomplete="off" />	
						</div>
					</div>
					<div class="form-row last">
						<div class="form-wrapper">
							<label for="">Jenis Kelamin</label>
							<select name="jenis_kelamin" id="jenis_kelamin" class="form-control">
								<option value="">Pilih Jenis Kelamin</option>
                                    <option value="Laki-Laki">Laki-Laki</option>
                                    <option value="Perempuan">Perempuan</option>	
							</select>
							<i class="zmdi zmdi-chevron-down"></i>
						</div>
					<div class="form-wrapper">
						<label for="">Username</label>					
							<input type="username" name="username" class="form-control" id="username" placeholder="Masukan Username " autocomplete="off" />							
						</div>
					</div>
					<div class="form-row last">
						<div class="form-wrapper">
								<label for="">Password</label>							
							<input type="password" name="password" class="form-control" id="password" placeholder="Masukan Password " autocomplete="off" />
						</div>						
					<div class="form-wrapper">
						<label for="">Alamat</label>							
							<input type="alamat" name="alamat" class="form-control" id="alamat" placeholder="Masukan Alamat " autocomplete="off" />							
						</div>
					</div>
					<div class="form-row last">
						<div class="form-wrapper">
								<label for="">Usia</label>							
							<input type="usia" name="usia" class="form-control" id="usia" placeholder="Masukan Usia" autocomplete="off" onkeypress="return hanyaAngka(event)" />
						</div>												
					</div>
					<button type="submit" value="" class="submit" id="submit" name="submit" data-text="Daftar">
						<span>Daftar </span>
					</button>
					<br>
					<div style=’text-align:right;’>
					<a href="../userpakar" class="">Login</a>
				</div>
				</form>
			</div>
		</div>
		
		<script src="js/jquery-3.3.1.min.js"></script>
 
		<!-- DATE-PICKER -->
		<script src="vendor/date-picker/js/datepicker.js"></script>
		<script src="vendor/date-picker/js/datepicker.en.js"></script>

		<script src="js/main.js"></script>

		<script>
    function hanyaAngka(evt) {
      var charCode = (evt.which) ? evt.which : event.keyCode
       if (charCode > 31 && (charCode < 48 || charCode > 57))
 
        return false;
      return true;
    }
  </script>
	</body>
</html>