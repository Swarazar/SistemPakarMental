<?php
include "koneksi.php";


$db_host = "localhost";
$db_user = "root";
$db_pass = "";
$db_name = "web_pakar";

$koneksi = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

if(mysqli_connect_errno()){
  echo 'Gagal melakukan koneksi ke Database : '.mysqli_connect_error();
}  


$id_user=$_POST["id_user"];
$Nama_user=$_POST["Nama_user"];
$jenis_kelamin=$_POST["jenis_kelamin"];
$username=$_POST["username"];
$password=$_POST["password"];
$alamat=$_POST["alamat"];
$usia=$_POST["usia"];
$user_role = "User";
$gambar = "img/avatar.jpg";


 if(empty($username)) {

     header('location:index.php?error=  !');
} {

 if(empty($password)) {
     header('location:index.php?error=  !');

} {

 if(empty($Nama_user)) {
     header('location:index.php?error=  !');

} {

 if(empty($jenis_kelamin)) {
     header('location:index.php?error=  !');

} {

 if(empty($alamat)) {
     header('location:index.php?error=  !');

} {

 if(empty($usia)) {
     header('location:index.php?error=  !');

      } else {



 $cek = mysqli_num_rows(mysqli_query($koneksi,"SELECT * FROM tb_user WHERE Nama_user='$Nama_user' or username='$username'"));

  if ($cek > 0){
    echo "<script>window.alert('Nama Atau Username Sudah Ada')
    window.location='prosesregistrasi.php'</script>";
    }else {
  $sql="insert into tb_user (id_user,Nama_user,jenis_kelamin,username,password,alamat,usia,user_role,gambar) values
		('$id_user','$Nama_user','$jenis_kelamin','$username','$password','$alamat','$usia','$user_role','$gambar')";
  $hasil=mysqli_query($kon,$sql);
  if ($hasil) {
	echo "<script>alert('Akun Telah Berhasil Dibuat'); window.location = '../userpakar'</script>";
	exit;
  }



} 
}  
}
}
}  
}
}
?>