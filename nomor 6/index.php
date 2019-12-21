<html>
<head>
	<title>Aplikasi Quick Count</title>
</head>
<body>
	<h1>Aplikasi Quick count</h1>
	<a href="form_simpan.php">Tambah Data</a><br><br>
	<table border="1" width="100%">
	<tr>
		<td>Nama</td>
		<td>Perolehan Suara</td>
		<th colspan="2">Aksi</th>
	</tr>
	<?php
	// Load file koneksi.php
	include "koneksi.php";
	$query = "SELECT * FROM tb_caleg"; // Query untuk menampilkan semua data siswa
	$sql = mysqli_query($connect, $query); // Eksekusi/Jalankan query dari variabel $query
	
	while($data = mysqli_fetch_array($sql)){ // Ambil semua data dari hasil eksekusi $sql
		echo "<tr>";
		echo "<td>".$data['name']."</td>";
		echo "<td>".$data['earn_vote']."</td>";
		
		
			echo "</tr>";

			
	}
	?>

	</table>
</body>
</html>
