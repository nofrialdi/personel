<?php
	include_once('includes/connect_database.php'); 
?>

<div id="content" class="container col-md-12">
	<?php 
		if(isset($_GET['id'])){
			$ID = $_GET['id'];
		}else{
			$ID = "";
		}
		
		// create array variable to store data from database
		$data = array();
		
		// get currency symbol from setting table
		/*$sql_query = "SELECT Value 
				FROM tbl_setting 
				WHERE Variable = 'Currency'";
		
		$stmt = $connect->stmt_init();
		if($stmt->prepare($sql_query)) {	
			// Execute query
			$stmt->execute();
			// store result 
			$stmt->store_result();
			$stmt->bind_result($currency);
			$stmt->fetch();
			$stmt->close();
		}	*/
		
		// get all data from menu table and category table
		$sql_query = "SELECT * 
				FROM tabel_personel_koopssus WHERE id=?
				";
		
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
					$data['Ket']

					);
			$stmt->fetch();
			$stmt->close();
		}
		
	?>

<div class="col-md-9 col-md-offset-2">
	<h1>Detail Data Nomor Telepon</h1>
	<form method="post">
		<table table class='table table-bordered table-condensed'>

			<tr class="row">
				<th class="detail">Foto</th>
				<td class="detail"><img src="<?php echo $data['Foto']; ?>" width="260" height="240"/></td>
			</tr>

			<tr class="row">
				<th class="detail">Jabatan</th>
				<td class="detail"><?php echo $data['Jabatan']; ?></td>
			</tr>

			<tr class="row">
				<th class="detail">Tmt Jabatan</th>
				<td class="detail"><?php echo $data['Tmt_jabatan']; ?></td>
			</tr>

			<tr class="row">
				<th class="detail">Nama</th>
				<td class="detail"><?php echo $data['Nama']; ?></td>
			</tr>
			
				<tr class="row">
				<th class="detail">Pangkat</th>
				<td class="detail"><?php echo $data['Pangkat']; ?></td>
			</tr>
			<tr class="row">
				<th class="detail">Korps</th>
				<td class="detail"><?php echo $data['Korps']; ?></td>
			</tr>
			<tr class="row">
				<th class="detail">NRP</th>
				<td class="detail"><?php echo $data['NRP']; ?></td>
			</tr>

			<tr class="row">
				<th class="detail">Matra</th>
				<td class="detail"><?php echo $data['Matra']; ?></td>
			</tr>

			<tr class="row">
				<th class="detail">Tempat Lahir</th>
				<td class="detail"><?php echo $data['Tempat_lahir']; ?></td>
			</tr>

			<tr class="row">
				<th class="detail">Tanggal Lahir</th>
				<td class="detail"><?php echo $data['Tanggal_lahir']; ?></td>
			</tr>

			<tr class="row">
				<th class="detail">Golongan Darah</th>
				<td class="detail"><?php echo $data['Gol_darah']; ?></td>
			</tr>

			<tr class="row">
				<th class="detail">Dik Akhir</th>
				<td class="detail"><?php echo $data['Dik_akhir']; ?></td>
			</tr>

			<tr class="row">
				<th class="detail">Status</th>
				<td class="detail"><?php echo $data['Status']; ?></td>
			</tr>

			<tr class="row">
				<th class="detail">Domisili</th>
				<td class="detail"><?php echo $data['Domisili']; ?></td>
			</tr>

			<tr class="row">
				<th class="detail">Alamat</th>
				<td class="detail"><?php echo $data['Alamat']; ?></td>
			</tr>

			<tr class="row">
				<th class="detail">Nomor HP</th>
				<td class="detail"><?php echo $data['No_hp']; ?></td>
			</tr>

			<tr class="row">
				<th class="detail">Email</th>
				<td class="detail"><?php echo $data['Email']; ?></td>
			</tr>

			<tr class="row">
				<th class="detail">Keterangan</th>
				<td class="detail"><?php echo $data['Ket']; ?></td>
			</tr>
			
		</table>
		
	</form>
	<div id="option_menu">
			<a href="edit-telpon.php?id=<?php echo $ID; ?>"><button class="btn btn-primary">Edit</button></a>
			<a href="delete-telpon.php?id=<?php echo $ID; ?>"><button class="btn btn-danger">Delete</button></a>
	</div>
	
	</div>
				
	<div class="separator"> </div>
</div>
			
<?php include_once('includes/close_database.php'); ?>