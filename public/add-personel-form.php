<?php
	include_once('includes/connect_database.php'); 
	include_once('functions.php'); 
?>
<div id="content" class="container col-md-12">
	 <?php 
		if(isset($_POST['btnAdd'])){

			$Jabatan=$_POST['Jabatan'];
			$Tmt_jabatan=$_POST['Tmt_jabatan'];
			$Nama=$_POST['Nama'];
			$Pangkat=$_POST['Pangkat'];
			$Korps=$_POST['Korps'];
			$NRP=$_POST['NRP'];
			$Matra=$_POST['Matra'];
			$Tempat_lahir=$_POST['Tempat_lahir'];
			$Tanggal_lahir=$_POST['Tanggal_lahir'];
			$Gol_darah=$_POST['Gol_darah'];
			$Dik_akhir=$_POST['Dik_akhir'];
			$Status=$_POST['Status'];
			$Domisili=$_POST['Domisili'];
			$Alamat=$_POST['Alamat'];
			$No_hp=$_POST['No_hp'];
			$Email=$_POST['Email'];
			$Ket=$_POST['Ket'];

			
			// get image info
			$Foto_image = $_FILES['Foto_image']['name'];
			$Foto_error = $_FILES['Foto_image']['error'];
			$Foto_type = $_FILES['Foto_image']['type'];
			
			// create array variable to handle error
			$error = array();
			
			if(empty($Nama)){
				$error['Nama'] = " <span class='label label-danger'>Required!</span>";
			}
			
			// common image file extensions
			$allowedExts = array("gif", "jpeg", "jpg", "png");
			
			// get image file extension
			error_reporting(E_ERROR | E_PARSE);
			$extension = end(explode(".", $_FILES["Foto_image"]["name"]));
					
			if($Foto_error > 0){
				$error['Foto_image'] = " <span class='label label-danger'>Not Uploaded!!</span>";
			}else if(!(($Foto_type == "image/gif") || 
				($Foto_type == "image/jpeg") || 
				($Foto_type == "image/jpg") || 
				($Foto_type == "image/x-png") ||
				($Foto_type == "image/png") || 
				($Foto_type == "image/pjpeg")) &&
				!(in_array($extension, $allowedExts))){
			
				$error['Foto_image'] = " <span class='label label-danger'>Image type must jpg, jpeg, gif, or png!</span>";
			}
			
			if(!empty($Nama) && empty($error['Foto_image'])){
				
				// create random image file name
				$string = '0123456789';
				$file = preg_replace("/\s+/", "_", $_FILES['Foto_image']['name']);
				$function = new functions;
				$menu_image = $function->get_random_string($string, 4)."-".date("Y-m-d").".".$extension;
					
				// upload new image
				$upload = move_uploaded_file($_FILES['Foto_image']['tmp_name'], 'upload/images/'.$Foto_image);
		
				// insert new data to menu table
				$sql_query = "INSERT INTO tabel_personel_koopssus (Jabatan,
								Tmt_jabatan,
								Nama,
								Pangkat,
								Korps,
								NRP,
								Matra,
								Tempat_lahir,
								Tanggal_lahir,
								Gol_darah,
								Dik_akhir,
								Status,
								Domisili,
								Alamat,
								No_hp,
								Foto,
								Email,
								Ket)
						VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
				
				$upload_image = 'upload/images/'.$Foto_image;
				$stmt = $connect->stmt_init();
				if($stmt->prepare($sql_query)) {	
					// Bind your variables to replace the ?s
					$stmt->bind_param('ssssssssssssssssss', 
								$Jabatan,
								$Tmt_jabatan,
								$Nama,
								$Pangkat,
								$Korps,
								$NRP,
								$Matra,
								$Tempat_lahir,
								$Tanggal_lahir,
								$Gol_darah,
								$Dik_akhir,
								$Status,
								$Domisili,
								$Alamat,
								$No_hp,
								$upload_image,
								$Email,
								$Ket

								);
					// Execute query
					$stmt->execute();
					// store result 
					$result = $stmt->store_result();
					$stmt->close();
				}
				
				if($result){
					$error['add_telpon'] = " <h4><div class='alert alert-success'>
														* Success Tambah Data
														<a href='telpon.php'>
														<i style='color:#3c763d' class='icon fa fa-check'></i>
														</a></div>
												  </h4>";
				}else{
					$error['add_telpon'] = " <span class='label label-danger'>Gagal Tambah Data</span>";
				}
			}
			
		}

		if(isset($_POST['btnCancel'])){
			header("location: telpon.php");
		}

	?>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
	<div class="col-md-12">
		<h1>Tambah Nomor Telepon</h1>
		<?php echo isset($error['add_telpon']) ? $error['add_telpon'] : '';?>
		<hr />
	</div>
	

	<div class="col-md-12">
		<form method="post"enctype="multipart/form-data">
				<div class="col-md-6">
				
				<label style="padding-left : 16px">Foto :</label><?php echo isset($error['Foto_image']) ? $error['Foto_image'] : '';?>
				<input style="padding-left : 16px"  type="file" name="Foto_image" id="Foto_image" />
				<br/>

					<label>Jabatan :</label><?php echo isset($error['Jabatan']) ? $error['Jabatan'] : '';?>
					<input type="text" class="form-control" name="Jabatan"/>
					<br/>

					<label>Tmt Jabatan :</label><?php echo isset($error['Tmt_jabatan']) ? $error['Tmt_jabatan'] : '';?>
					<input type="date" class="form-control" name="Tmt_jabatan"/>
					<br/>

					<label>Nama :</label><?php echo isset($error['Nama']) ? $error['Nama'] : '';?>
					<input type="text" class="form-control" name="Nama"/>
					<br/>

					<label>Pangkat :</label><?php echo isset($error['Pangkat']) ? $error['Pangkat'] : '';?>
					<input type="text" class="form-control" name="Pangkat"/>
					<br/>

					<!-- <label>Agama :</label><?php echo isset($error['Agama']) ? $error['Agama'] : '';?>
					<select class="form-control" name="Agama">
					<option value="Islam">Islam</option>
					<option value="Kristen">Kristen</option>
					<option value="Hindu">Hindu</option>
					<option value="Budha">Budha</option>
					<option value="Lainnya">Lainnya</option>
					</select>
					<br/>
 -->
					<label>Korps :</label><?php echo isset($error['Korps']) ? $error['Korps'] : '';?>
					<input type="text" class="form-control" name="Korps"/>
					<br/>

					<label>NRP :</label><?php echo isset($error['NRP']) ? $error['NRP'] : '';?>
					<input type="text" class="form-control" name="NRP"/>
					<br/>
					
					<label>Matra :</label><?php echo isset($error['Matra']) ? $error['Matra'] : '';?>
					<select class="form-control" name="Matra">
					<option value="TNI AD">TNI AD</option>
					<option value="TNI AL">TNI AL</option>
					<option value="TNI AU">TNI AU</option>
					</select>
					<br/>

					<label>Tempat Lahir :</label><?php echo isset($error['Tempat_lahir']) ? $error['Tempat_lahir'] : '';?>
					<input type="text" class="form-control" name="Tempat_lahir"/>
					<br/>

					<!-- <label>Email :</label><?php echo isset($error['Email']) ? $error['Email'] : '';?>
					<input type="text" class="form-control" name="Email"/>
					<br/> -->
				</div>

					<div class="col-md-6">

						<label>Tanggal Lahir :</label><?php echo isset($error['Tanggal_lahir']) ? $error['Tanggal_lahir'] : '';?>
						<input type="date" class="form-control" name="Tanggal_lahir"/>
						<br/>

						<label>Golongan Darah :</label><?php echo isset($error['Gol_darah']) ? $error['Gol_darah'] : '';?>
						<select class="form-control" name="Gol_darah">
						<option value="A">A</option>
						<option value="B">B</option>
						<option value="AB">AB</option>
						<option value="O">O</option>
						</select>
						<br/>

						<label>Dik Akhir :</label><?php echo isset($error['Dik_akhir']) ? $error['Dik_akhir'] : '';?>
						<input type="text" class="form-control" name="Dik_akhir"/>
						<br/>
						
					
						<label>Status :</label><?php echo isset($error['Status']) ? $error['Status'] : '';?>
						<select class="form-control" name="Status">
						<option value="BK">BK</option>
						<option value="K-0">K-0</option>
						<option value="K-1">K-1</option>
						<option value="K-2">K-2</option>
						<option value="K-3">K-3</option>
						<option value="K-4">K-4</option>
						<option value="K-5">K-5</option>
						</select>
						<br/>
						
						<label>Domisili :</label><?php echo isset($error['Domisili']) ? $error['Domisili'] : '';?>
						<input type="text" class="form-control" name="Domisili"/>
						<br/>
						
						<label>Alamat :</label><?php echo isset($error['Alamat']) ? $error['Alamat'] : '';?>
						<input type="text" class="form-control" name="Alamat"/>
						<br/>

						<label>No HP :</label><?php echo isset($error['No_hp']) ? $error['No_hp'] : '';?>
						<input type="text" class="form-control" name="No_hp"/>
						<br/>

						<label>Email :</label><?php echo isset($error['Email']) ? $error['Email'] : '';?>
						<input type="text" class="form-control" name="Email"/>
						<br/>

						<label>Ket :</label><?php echo isset($error['Ket']) ? $error['Ket'] : '';?>
						<input type="text" class="form-control" name="Ket"/>
						<br/>
					
					</div>
				<div class="col-md-12">

						<input type="submit" class="btn-primary btn" value="Submit" name="btnAdd"/>
					<input type="reset" class="btn-warning btn" value="Clear"/>
					<input type="submit" class="btn-danger btn" value="Cancel" name="btnCancel"/>
				</form>
			</div>
	<div class="separator"> </div>
</div>
	
<?php include_once('includes/close_database.php'); ?>