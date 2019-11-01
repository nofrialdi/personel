<?php
	include_once('includes/connect_database.php'); 
	include_once('functions.php'); 
?>
<div id="content" class="container col-md-12">
	<div id="content" class="container col-md-12">
	<?php 
	
		if(isset($_GET['id'])){
			$ID = $_GET['id'];
		}else{
			$ID = "";
		}
		
		// create array variable to store category data
		$category_data = array();
			
		$sql_query = "SELECT Foto FROM tabel_personel_koopssus WHERE id = ?";
		
		$stmt = $connect->stmt_init();
		if($stmt->prepare($sql_query)) {	
			// Bind your variables to replace the ?s
			$stmt->bind_param('s', $ID);
			// Execute query
			$stmt->execute();
			// store result 
			$stmt->store_result();
			$stmt->bind_result($previous_Foto_image);
			$stmt->fetch();
			$stmt->close();
		}
		
		
		
		if(isset($_POST['btnEdit'])){
			
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
			
			if(empty($Jabatan)){
				$error['Jabatan'] = " <span class='label label-danger'>Required!</span>";
			}

			if(empty($Nama)){
				$error['Nama'] = " <span class='label label-danger'>Required!</span>";
			}


			/*if(empty($Pangkat_korps)){
				$error['Pangkat_korps'] = " <span class='label label-danger'>Required!</span>";
			}
				
			if(empty($Agama)){
				$error['Agama'] = " <span class='label label-danger'>Required!</span>";
			}

			if(empty($Kesatuan)){
				$error['Kesatuan'] = " <span class='label label-danger'>Required!</span>";
			}

			if(empty($Matra)){
				$error['Matra'] = " <span class='label label-danger'>Required!</span>";
			}

			if(empty($Email)){
				$error['Email'] = " <span class='label label-danger'>Required!</span>";
			}	

			if(empty($Alamat_kantor)){
				$error['Alamat_kantor'] = " <span class='label label-danger'>Required!</span>";
			}

			if(empty($No_telepon_kantor_1)){
				$error['No_telepon_kantor_1'] = " <span class='label label-danger'>Required!</span>";
			}

			if(empty($No_telepon_kantor_2)){
				$error['No_telepon_kantor_2'] = " <span class='label label-danger'>Required!</span>";
			}

			if(empty($No_fax)){
				$error['No_fax'] = " <span class='label label-danger'>Required!</span>";
			}

			if(empty($Alamat_Rumah)){
				$error['Alamat_kantor'] = " <span class='label label-danger'>Required!</span>";
			}

			if(empty($No_telepon_rumah)){
				$error['No_telepon_rumah'] = " <span class='label label-danger'>Required!</span>";
			}

			if(empty($No_hp)){
				$error['No_hp'] = " <span class='label label-danger'>Required!</span>";
			}
*/
			// common image file extensions
			$allowedExts = array("gif", "jpeg", "jpg", "png");
			
			// get image file extension
			error_reporting(E_ERROR | E_PARSE);
			$extension = end(explode(".", $_FILES["Foto_image"]["name"]));
			
			if(!empty($Foto_image)){
				if(!(($Foto_type == "image/gif") || 
					($Foto_type == "image/jpeg") || 
					($Foto_type == "image/jpg") || 
					($Foto_type == "image/x-png") ||
					($Foto_type == "image/png") || 
					($Foto_type == "image/pjpeg")) &&
					!(in_array($extension, $allowedExts))){
					
					$error['Foto_image'] = "*<span class='label label-danger'>Image type must jpg, jpeg, gif, or png!</span>";
				}
			}
			
					
			if(!empty($Jabatan) && 
				!empty($Nama)
			){
				
				if(!empty($Foto_image)){
					
					// create random image file name
					$string = '0123456789';
					$file = preg_replace("/\s+/", "_", $_FILES['Foto_image']['name']);
					$function = new functions;
					$Foto_image = $function->get_random_string($string, 4)."-".date("Y-m-d").".".$extension;
				
					// delete previous image
					$delete = unlink("$previous_Foto_image");
					
					// upload new image
					$upload = move_uploaded_file($_FILES['Foto_image']['tmp_name'], 'upload/images/'.$Foto_image);
	  
					// updating all data
					$sql_query = "UPDATE tabel_personel_koopssus 
							SET Jabatan=?,
								Tmt_jabatan=?,
								Nama=?,
								Pangkat=?,
								Korps=?,
								NRP=?,
								Matra=?,
								Tempat_lahir=?,
								Tanggal_lahir=?,
								Gol_darah=?,
								Dik_akhir=?,
								Status=?,
								Domisili=?,
								Alamat=?,
								No_hp=?,
								Foto=?,
								Email=?,
								Ket=?
								
							WHERE id = ?";
					
					$upload_image = 'upload/images/'.$Foto_image;
					$stmt = $connect->stmt_init();
					if($stmt->prepare($sql_query)) {	
						// Bind your variables to replace the ?s
						$stmt->bind_param('sssssssssssssssssss', 
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
									$Ket,
									$ID);
						// Execute query
						$stmt->execute();
						// store result 
						$update_result = $stmt->store_result();
						$stmt->close();
					}
				}else{
					
					// updating all data except image file
					$sql_query = "UPDATE tabel_personel_koopssus 
							SET Jabatan=?,
								Tmt_jabatan=?,
								Nama=?,
								Pangkat=?,
								Korps=?,
								NRP=?,
								Matra=?,
								Tempat_lahir=?,
								Tanggal_lahir=?,
								Gol_darah=?,
								Dik_akhir=?,
								Status=?,
								Domisili=?,
								Alamat=?,
								No_hp=?,
								Email=?,
								Ket=?
							WHERE id = ?";
							
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
									$Email,
									$Ket,
									$ID);
						// Execute query
						$stmt->execute();
						// store result 
						$update_result = $stmt->store_result();
						$stmt->close();
					}
				}
					
			

				if($update_result){
					$error['update_telpon'] = " <h4><div class='alert alert-success'>
														* Success Update Data
														<a href='telpon.php'>
														<i style='color:#3c763d' class='icon fa fa-check'></i>
														</a></div>
												  </h4>";
				}else{
					$error['update_telpon'] = " <span class='label label-danger'>Gagal Update Data</span>";
				}
			}
			
		}
		
		// create array variable to store previous data
		$data = array();
			
		$sql_query = "SELECT * FROM tabel_personel_koopssus WHERE id = ?";
			
		$stmt = $connect->stmt_init();
		if($stmt->prepare($sql_query)) {	
			// Bind your variables to replace the ?s
			$stmt->bind_param('s', $ID);
			// Execute query
			$stmt->execute();
			// store result 
			$stmt->store_result();
			$stmt->bind_result($data['id'],
					$data['Jabatan'],
					$data['Tmt_jabatan'],
					$data['Nama'],					
					$data['Pangkat'], 
					$data['Korps'],
					$data['NRP'],
					$data['Matra'],
					$data['Tempat_lahir'],
					$data['Tanggal_lahir'],
					$data['Gol_darah'],
					$data['Dik_akhir'],
					$data['Status'],
					$data['Domisili'],
					$data['Alamat'],
					$data['No_hp'],
					$data['Foto'],
					$data['Email'],
					$data['Ket']);
			$stmt->fetch();
			$stmt->close();
		}

		if(isset($_POST['btnCancel'])){
			header("location: personel.php");
		}
		
			
	?>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

	<div class="col-md-12">
		<h1>Edit Data Personel</h1>
		<?php echo isset($error['update_telpon']) ? $error['update_telpon'] : '';?>
		<hr />
	</div>
	
	<div class="col-md-12">
		<form method="post"enctype="multipart/form-data">

			<label style="padding-left : 16px">Image :</label><?php echo isset($error['Foto']) ? $error['Foto'] : '';?>
			<input type="file" name="Foto_image" id="Foto" /><br />

			<img src="<?php echo $data['Foto']; ?>" width="280" height="270"/> 
			<br/>
			<br/>
			
				<div class="col-md-6">
				
					<label>Jabatan :</label><?php echo isset($error['Jabatan']) ? $error['Jabatan'] : '';?>
					<input type="text" class="form-control" name="Jabatan" value="<?php echo $data['Jabatan']; ?>"/><br />

					<label>Tmt Jabatan :</label><?php echo isset($error['Tmt_jabatan']) ? $error['Tmt_jabatan'] : '';?>
					<input type="date" class="form-control" name="Tmt_jabatan" value="<?php echo $data['Tmt_jabatan']; ?>"/><br />

					<label>Nama :</label><?php echo isset($error['Nama']) ? $error['Nama'] : '';?>
					<input type="text" class="form-control" name="Nama" value="<?php echo $data['Nama']; ?>"/>
					<br/>

					<label>Pangkat :</label><?php echo isset($error['Pangkat']) ? $error['Pangkat'] : '';?>
					<input type="text" class="form-control" name="Pangkat" value="<?php echo $data['Pangkat']; ?>"/>
					<br/>

					<label>Korps :</label><?php echo isset($error['Korps']) ? $error['Korps'] : '';?>
					<input type="text" class="form-control" name="Korps" value="<?php echo $data['Korps']; ?>"/>
					<br/>

					<label>NRP :</label><?php echo isset($error['NRP']) ? $error['NRP'] : '';?>
					<input type="text" class="form-control" name="NRP" value="<?php echo $data['NRP']; ?>" />
					<br/>
					
					<label>Matra :</label><?php echo isset($error['Matra']) ? $error['Matra'] : '';?>
					<input type="text" class="form-control" name="Matra" value="<?php echo $data['Matra']; ?>"/>
					<br/>

					<label>Tempat Lahir :</label><?php echo isset($error['Tempat_lahir']) ? $error['Tempat_lahir'] : '';?>
					<input type="text" class="form-control" name="Tempat_lahir" value="<?php echo $data['Tempat_lahir']; ?>"/>
					<br/>
				</div>

					<div class="col-md-6">
						<label>Tanggal Lahir :</label><?php echo isset($error['Tanggal_lahir']) ? $error['Tanggal_lahir'] : '';?>
						<input type="date" class="form-control" name="Tanggal_lahir" value="<?php echo $data['Tanggal_lahir']; ?>"/>
						<br/>

						<label>Golongan Darah :</label><?php echo isset($error['Gol_darah']) ? $error['Gol_darah'] : '';?>
						<input type="text" class="form-control" name="Gol_darah" value="<?php echo $data['Gol_darah']; ?>"/>
						<br/>
						
						<label>Dik Akhir :</label><?php echo isset($error['Dik_akhir']) ? $error['Dik_akhir'] : '';?>
						<input type="text" class="form-control" name="Dik_akhir" value="<?php echo $data['Dik_akhir']; ?>"/>
						<br/>
						
						<label>Status :</label><?php echo isset($error['Status']) ? $error['Status'] : '';?>
						<input type="text" class="form-control" name="Status" value="<?php echo $data['Status']; ?>"/>
						<br/>
						
						<label>Domisili :</label><?php echo isset($error['Domisili']) ? $error['Domisili'] : '';?>
						<input type="text" class="form-control" name="Domisili" value="<?php echo $data['Domisili']; ?>"/>
						<br/>
						
						<label>Alamat :</label><?php echo isset($error['Alamat']) ? $error['Alamat'] : '';?>
						<input type="text" class="form-control" name="Alamat" value="<?php echo $data['Alamat']; ?>"/>
						<br/>

						<label>No HP :</label><?php echo isset($error['No_hp']) ? $error['No_hp'] : '';?>
						<input type="text" class="form-control" name="No_hp" value="<?php echo $data['No_hp']; ?>"/>
						<br/>

						<label>Email :</label><?php echo isset($error['Email']) ? $error['Email'] : '';?>
						<input type="text" class="form-control" name="Email" value="<?php echo $data['Email']; ?>"/>
						<br/>

						<label>Keterangan :</label><?php echo isset($error['Ket']) ? $error['Ket'] : '';?>
						<input type="text" class="form-control" name="Ket" value="<?php echo $data['Ket']; ?>"/>
						<br/>
					
					</div>
				<div class="col-md-12">
					<input type="submit" class="btn-primary btn" value="Update" name="btnEdit"/>
					<input type="submit" class="btn-danger btn" value="Cancel" name="btnCancel"/>
				</div>
				</form>
			</div>

	<div class="separator"> </div>
</div>
	
<?php include_once('includes/close_database.php'); ?>