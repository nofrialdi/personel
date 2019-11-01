<?php
	include_once('includes/connect_database.php'); 
	include_once('functions.php'); 
	
?>

<div id="content" class="container col-md-12">
	<?php 
		// create object of functions class
		$function = new functions;
		
		// create array variable to store data from database
		$data = array();
		
		if(isset($_GET['keyword'])){	
			// check value of keyword variable
			$keyword = $function->sanitize($_GET['keyword']);
			$bind_keyword = "%".$keyword."%";
		}else{
			$keyword = "";
			$bind_keyword = $keyword;
		}
		
		// get all data from pemesanan table
		if(empty($keyword)){
			$sql_query = "SELECT * 
				FROM tabel_personel_koopssus 
				ORDER BY id DESC";
		}else{
			$sql_query = "SELECT *
				FROM tabel_personel_koopssus 
				WHERE Jabatan LIKE ? 
				ORDER BY id DESC";
		}
			
		$stmt = $connect->stmt_init();
		if($stmt->prepare($sql_query)) {	
			// Bind your variables to replace the ?s
			if(!empty($keyword)){
				$stmt->bind_param('s', $bind_keyword);
			}
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
					
			// get total records
			$total_records = $stmt->num_rows;
		}
		
		// check page parameter
		if(isset($_GET['page'])){
			$page = $_GET['page'];
		}else{
			$page = 1;
		}
		
		// number of data that will be display per page
		$offset = 10;
							
		//lets calculate the LIMIT for SQL, and save it $from
		if ($page){
			$from 	= ($page * $offset) - $offset;
		}else{
			//if nothing was given in page request, lets load the first page
			$from = 0;	
		}
		
		// get all data from pemesanan table
		if(empty($keyword)){
			$sql_query = "SELECT *
				FROM tabel_personel_koopssus
				ORDER BY id DESC 
				LIMIT ?, ?";
		}else{
			$sql_query = "SELECT *
				FROM tabel_personel_koopssus
				WHERE Jabatan LIKE ? 
				ORDER BY id DESC 
				LIMIT ?, ?";
		}
		
		$stmt_paging = $connect->stmt_init();
		if($stmt_paging ->prepare($sql_query)) {
			// Bind your variables to replace the ?s
			if(empty($keyword)){
				$stmt_paging ->bind_param('ss', $from, $offset);
			}else{
				$stmt_paging ->bind_param('sss', $bind_keyword, $from, $offset);
			}
			// Execute query
			$stmt_paging ->execute();
			// store result 
			$stmt_paging ->store_result();
			
			$stmt_paging ->bind_result($data['id'], 
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
			
			// for paging purpose
			$total_records_paging = $total_records; 
		}
						
		// if no data on database show "Tidak Ada Pemesanan"
		if($total_records_paging == 0){
	?>
	<h1>Data Tidak ditemukan
		<a href="add-personel.php">
			<button class="btn btn-danger">Tambah Personel</button>
		</a>
	</h1>

	<hr />
	
	<?php
		// otherwise, show data
		}else{ $row_number = $from + 1;?>
	
	<div>


	<div class="col-md-12 ">
		<h1>Data Personel
		<!-- <a href="add-category.php"> -->
			<a href="add-personel.php">
				<button class="btn btn-danger">Tambah Personel</button>
			</a></h1>
		<hr/>
	</div>

	<!-- search form -->
	<form class="list_header" method="get">
		<div class="col-md-12">
			<p class="pholder">Cari Berdasarkan Jabatan : </p>
		</div>
		
		<div class="col-md-3">
			<input type="text" class="form-control" name="keyword"/>
		</div>
		<br>
			&nbsp;&nbsp;&nbsp;
			<input type="submit" class="btn btn-primary" name="btnSearch" value="Search"/>
	</form> 
	<!-- end of search form -->
	
	<br>
	<div class="col-md-12">
	<div class="table-responsive">
	<table class='table table-hover table-condensed table-bordered'>
		<tr class="success">
			  <!-- <th>No</th> -->  
			<th>Jabatan</th>
			<th>Nama</th>
			<th>Pangkat</th>
			
			<th>Action</th>
		</tr>
		<?php
			$no=1; 
			// get all data using while loop
			while ($stmt_paging->fetch()){ 
				?>
			<tr>
				 <!-- <td><?php echo $no++; ?></td> -->
				<td><?php echo $data['Jabatan'];?></td>
				<td><?php echo $data['Nama'];?></td>
				
				 <td><?php echo $data['Pangkat'];?></td>  
				<td>

					<a href="personel-detail.php?id=<?php echo $data['id'];?>">
						View
					</a>&nbsp;

					<a href="edit-personel.php?id=<?php echo $data['id'];?>">
						Edit
					</a>&nbsp;

					 

					<a href="delete-personel.php?id=<?php echo $data['id'];?>">
						Delete
					</a>
				</td> 
			</tr>
		<?php } }?>
	</table>
	</div>
	</div>
	
	<div class="col-md-12">
	
	<h4>
		<?php 
			// for pagination purpose
			$function->doPages($offset, 'telpon.php', '', $total_records, $keyword);
		?>
	</h4>
	
	</div>
	<div class="separator"> </div>
</div> 
</div>

<?php 
	$stmt->close();
	include_once('includes/close_database.php'); ?>
					
				